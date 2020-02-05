
import Foundation
import SwiftUI

struct VideoView: UIViewControllerRepresentable {
    var webRTCClient: WebRTCClient?
    var signalingClient: SignalingClient?
    var localSenderClientID: String?
    var isMaster: Bool? = false
    
    func makeUIViewController(context: Context) -> UIViewController {
        let videoVC = VideoViewController(webRTCClient: webRTCClient, signalingClient: signalingClient, localSenderClientID: localSenderClientID, isMaster: isMaster)
        return videoVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
