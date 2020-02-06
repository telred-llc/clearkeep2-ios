
import Foundation
import AWSKinesisVideo
import AWSMobileClient
import AWSCognitoIdentityProvider
import WebRTC
import AWSCore
import AWSKinesisVideoSignaling

typealias VideoRespone = (webRTC: WebRTCClient, signaling: SignalingClient, localSenderId: String, isMaster: Bool)

final class VideoCallMananger {
    static let shared = VideoCallMananger()
    
    var userListDevicesResponse: AWSCognitoIdentityUserListDevicesResponse?
    var user: AWSCognitoIdentityUser?
    var pool: AWSCognitoIdentityUserPool?
    var userDetailsResponse: AWSCognitoIdentityUserGetDetailsResponse?
    var userSessionResponse: AWSCognitoIdentityUserSession?
    var AWSCredentials: AWSCredentials?
    var wssURL: URL?
    var signalingClient: SignalingClient?
    var channelARN: String?
    var isMaster: Bool?
    var webRTCClient: WebRTCClient?
    var iceServerList: [AWSKinesisVideoSignalingIceServer]?
    var vc: VideoViewController?
    var awsRegionType: AWSRegionType = .Unknown
    var signalingConnected: Bool = false
    var sendAudioEnabled: Bool = true
    var remoteSenderClientId: String?
    lazy var localSenderId: String = {
        return connectAsViewClientId
    }()
    var channelName = ""
    var awsRegionValue = "us-west-2"
    var peerConnection: RTCPeerConnection?

    func createRoom(name: String, completed: @escaping ((_ isComplete: Bool, _ result: VideoRespone?) -> Void)) {
        self.channelName = name
        self.isMaster = true
        connectAsRole(role: masterRole, connectAsUser: connectAsMasterKey, completed: completed)
    }
    
    func joinRoom(name: String, completed: @escaping ((_ isComplete: Bool, _ result: VideoRespone?) -> Void)) {
        self.channelName = name
        self.isMaster = false
        connectAsRole(role: viewerRole, connectAsUser: connectAsViewerKey, completed: completed)

    }
    //MARK: - Configuration function
    func connectAsRole(role: String, connectAsUser: String, completed: @escaping ((_ isComplete: Bool, _ result: VideoRespone?) -> Void)) {
        
        
        self.awsRegionType = awsRegionValue.aws_regionTypeValue()
        
        self.localSenderId = NSUUID().uuidString.lowercased()
        print("Generated clientID is \(self.localSenderId)")
        // Kinesis Video Client Configuration
        let configuration = AWSServiceConfiguration(region: self.awsRegionType, credentialsProvider: AWSMobileClient.default())
        AWSKinesisVideo.register(with: configuration!, forKey: AwsKinesisVideoKey)
        
        retrieveChannelARN(channelName: channelName)
        if self.channelARN == nil {
            createChannel(channelName: channelName)
        }
        getSignedWSSUrl(channelARN: self.channelARN!, role: role, connectAs: connectAsUser, region: awsRegionValue)
        print("WSS URL :", wssURL?.absoluteString as Any)
        
        var RTCIceServersList = [RTCIceServer]()
        
        for iceServers in self.iceServerList! {
            RTCIceServersList.append(RTCIceServer.init(urlStrings: iceServers.uris!, username: iceServers.username, credential: iceServers.password))
        }
        
        RTCIceServersList.append(RTCIceServer.init(urlStrings: ["stun:stun.kinesisvideo." + awsRegionValue + ".amazonaws.com:443"]))
        webRTCClient = WebRTCClient(iceServers: RTCIceServersList, isAudioOn: sendAudioEnabled)
        webRTCClient!.delegate = self
        
        print("Connecting to web socket from channel config")
        signalingClient = SignalingClient(serverUrl: wssURL!)
        signalingClient!.delegate = self
        signalingClient!.connect()
        
        let seconds = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            guard let webRTC = self.webRTCClient, let signal = self.signalingClient, let isMaster = self.isMaster else {
                completed(false, nil)
                return
            }
            let result = (webRTC, signal, self.localSenderId, isMaster)
            completed(true, result)
            
        }
    }
    
    private func createChannel(channelName:String) {
        let kvsClient = AWSKinesisVideo(forKey: AwsKinesisVideoKey)
        let createSigalingChannelInput = AWSKinesisVideoCreateSignalingChannelInput.init()
        createSigalingChannelInput?.channelName = channelName
        kvsClient.createSignalingChannel(createSigalingChannelInput!).continueWith(block: { (task) -> Void in
            if let error = task.error {
                print("Error creating channel \(error)")
                return
            } else {
                self.channelARN = task.result?.channelARN
                print("Channel ARN : ", task.result?.channelARN)
            }
        }).waitUntilFinished()
        if (self.channelARN == nil) {
            MessageUtils.showMess(type: .failed, string: "Please validate all fields")
            return
        }
    }
    
    private func retrieveChannelARN(channelName: String) {
        let describeInput = AWSKinesisVideoDescribeSignalingChannelInput()
        describeInput?.channelName = channelName
        let kvsClient = AWSKinesisVideo(forKey: AwsKinesisVideoKey)
        kvsClient.describeSignalingChannel(describeInput!).continueWith(block: { (task) -> Void in
            if let error = task.error {
                print("Error describing channel: \(error)")
            } else {
                self.channelARN = task.result?.channelInfo?.channelARN
                print("Channel ARN : ", task.result!.channelInfo!.channelARN)
            }
        }).waitUntilFinished()
        usleep(10)
    }
    
    func getSingleMasterChannelEndpointRole() -> AWSKinesisVideoChannelRole {
        if isMaster! {
            return .master
        }
        return .viewer
    }
    
    func getSignedWSSUrl(channelARN: String, role: String, connectAs: String, region: String) {
        let singleMasterChannelEndpointConfiguration = AWSKinesisVideoSingleMasterChannelEndpointConfiguration()
        singleMasterChannelEndpointConfiguration?.protocols = videoProtocols
        singleMasterChannelEndpointConfiguration?.role = getSingleMasterChannelEndpointRole()
        
        var httpResourceEndpointItem = AWSKinesisVideoResourceEndpointListItem()
        var wssResourceEndpointItem = AWSKinesisVideoResourceEndpointListItem()
        let kvsClient = AWSKinesisVideo(forKey: AwsKinesisVideoKey)
        
        let signalingEndpointInput = AWSKinesisVideoGetSignalingChannelEndpointInput()
        signalingEndpointInput?.channelARN = channelARN
        signalingEndpointInput?.singleMasterChannelEndpointConfiguration = singleMasterChannelEndpointConfiguration
        
        kvsClient.getSignalingChannelEndpoint(signalingEndpointInput!).continueWith(block: { (task) -> Void in
            if let error = task.error {
                print("Error to get channel endpoint: \(error)")
            } else {
                print("Resource Endpoint List : ", task.result!.resourceEndpointList!)
            }
            
            guard (task.result?.resourceEndpointList) != nil else {
                MessageUtils.showMess(type: .failed, string: "Invalid region")
                return
            }
            for endpoint in task.result!.resourceEndpointList! {
                switch endpoint.protocols {
                case .https:
                    httpResourceEndpointItem = endpoint
                case .wss:
                    wssResourceEndpointItem = endpoint
                default:
                    print("Error: Unknown endpoint protocol ", endpoint.protocols, "for endpoint" + endpoint.description())
                }
            }
            AWSMobileClient.default().getAWSCredentials { credentials, _ in
                self.AWSCredentials = credentials
            }
            
            var httpURlString = (wssResourceEndpointItem?.resourceEndpoint!)!
                + "?X-Amz-ChannelARN=" + self.channelARN!
            if !self.isMaster! {
                httpURlString += "&X-Amz-ClientId=" + self.localSenderId
            }
            let httpRequestURL = URL(string: httpURlString)
            let wssRequestURL = URL(string: (wssResourceEndpointItem?.resourceEndpoint!)!)
            usleep(5)
            self.wssURL = KVSSigner
                .sign(signRequest: httpRequestURL!,
                      secretKey: (self.AWSCredentials?.secretKey)!,
                      accessKey: (self.AWSCredentials?.accessKey)!,
                      sessionToken: (self.AWSCredentials?.sessionKey)!,
                      wssRequest: wssRequestURL!,
                      region: region)
            
            // Get the List of Ice Server Config and store it in the self.iceServerList.
            
            let endpoint =
                AWSEndpoint(region: self.awsRegionType,
                            service: .KinesisVideo,
                            url: URL(string: httpResourceEndpointItem!.resourceEndpoint!))
            let configuration =
                AWSServiceConfiguration(region: self.awsRegionType,
                                        endpoint: endpoint,
                                        credentialsProvider: AWSMobileClient.default())
            AWSKinesisVideoSignaling.register(with: configuration!, forKey: AwsKinesisVideoKey)
            let kvsSignalingClient = AWSKinesisVideoSignaling(forKey: AwsKinesisVideoKey)
            
            let iceServerConfigRequest = AWSKinesisVideoSignalingGetIceServerConfigRequest.init()
            
            iceServerConfigRequest?.channelARN = channelARN
            iceServerConfigRequest?.clientId = self.localSenderId
            kvsSignalingClient.getIceServerConfig(iceServerConfigRequest!).continueWith(block: { (task) -> Void in
                if let error = task.error {
                    print("Error to get ice server config: \(error)")
                } else {
                    self.iceServerList = task.result!.iceServerList
                    print("ICE Server List : ", task.result!.iceServerList!)
                }
            }).waitUntilFinished()
            
        }).waitUntilFinished()
    }
    
}

extension VideoCallMananger: WebRTCClientDelegate {
    
    func webRTCClient(_: WebRTCClient, didGenerate candidate: RTCIceCandidate) {
        print("Generated local candidate")
        signalingClient?.sendIceCandidate(rtcIceCandidate: candidate, master: isMaster!,
                                          recipientClientId: remoteSenderClientId ?? "",
                                          senderClientId: self.localSenderId)
    }
    
    func webRTCClient(_: WebRTCClient, didChangeConnectionState state: RTCIceConnectionState) {
        switch state {
        case .connected, .completed:
            print("WebRTC connected/completed state")
        case .disconnected:
            print("WebRTC disconnected state")
        case .new:
            print("WebRTC new state")
        case .checking:
            print("WebRTC checking state")
        case .failed:
            print("WebRTC failed state")
        case .closed:
            print("WebRTC closed state")
        case .count:
            print("WebRTC count state")
        @unknown default:
            print("WebRTC unknown state")
        }
    }
    
    func webRTCClient(_: WebRTCClient, didReceiveData _: Data) {
        print("Received local data")
    }
}

extension VideoCallMananger: SignalClientDelegate {
    func signalClientDidConnect(_: SignalingClient) {
        print("Did Connect")
    }
    
    func signalClientDidDisconnect(_: SignalingClient) {
        print("Did Disconnect")
    }
    
    func signalClient(_: SignalingClient, senderClientId: String, didReceiveRemoteSdp sdp: RTCSessionDescription) {
        print("Received remote sdp from [\(senderClientId)]")
        if !senderClientId.isEmpty {
            remoteSenderClientId = senderClientId
        }
        webRTCClient!.set(remoteSdp: sdp) { _ in
            print("Set remote sdp")
            
        }
    }
    
    func signalClient(_: SignalingClient, senderClientId: String, didReceiveCandidate candidate: RTCIceCandidate) {
        print("Received remote candidate from [\(senderClientId)]")
        if !senderClientId.isEmpty {
            remoteSenderClientId = senderClientId
        }
        webRTCClient!.set(remoteCandidate: candidate)
    }
}
