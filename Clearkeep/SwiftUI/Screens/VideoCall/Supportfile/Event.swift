import Foundation
import WebRTC

public class Event {
    public class func parseEvent(event: String) -> Message? {
        do {
            print("Event = \(event)")

            let payLoad = try event.convertToDictionaryValueAsString()

            if payLoad.count >= 2 {
                print(payLoad)

                let messageType: String = payLoad["messageType"]!
                let messagePayload: String = payLoad["messagePayload"]!
                if let senderClientId = payLoad["senderClientId"] {
                    print("senderClientId : \(senderClientId)")
                    return Message(messageType, "", senderClientId, messagePayload)
                } else {
                    return Message(messageType, "", "", messagePayload)
                }
            }

        } catch {
            print("payload Error \(error)")
        }
        return nil
    }
}

extension String {
    func base64Encoded() -> String? {
        return data(using: .utf8)?.base64EncodedString()
    }

    func base64Decoded() -> String? {
        print("decode base64")

        var localData: Data?
        localData = Data(base64Encoded: self)
        var s: String = self
        if localData == nil {
            s = self + "=="
        }
        guard let data = Data(base64Encoded: s, options: Data.Base64DecodingOptions(rawValue: 0)) else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }

    func convertToDictionaryValueAsString() throws -> [String: String] {
        let data = Data(utf8)

        if let anyResult = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String] {
            return anyResult
        } else {
            return [:]
        }
    }
}
