
import SwiftUI
import GrowingTextView

struct GrowTextView: UIViewRepresentable {
    @Binding var value: String
    @State var placeholder = ""
    @Binding var height: CGFloat
    
    func makeUIView(context: Context) -> GrowingTextView {
        let growingTV = GrowingTextView()
        growingTV.placeholder = placeholder
        growingTV.maxHeight = 150
        growingTV.minHeight = 40
        growingTV.backgroundColor = .clear
        growingTV.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        growingTV.delegate = context.coordinator
        return growingTV
    }
    
    func updateUIView(_ uiView: GrowingTextView, context: Context) {
        uiView.layoutIfNeeded()
        uiView.text = value
    }
    
    func makeCoordinator() -> GrowTextView.Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: NSObject, GrowingTextViewDelegate {
        var parent: GrowTextView?
        init(_ parent: GrowTextView) {
            self.parent = parent
        }
        
        func textViewDidChangeHeight(_ textView: GrowingTextView, height: CGFloat) {
            parent?.height = height
        }
        
        func textViewDidChange(_ textView: UITextView) {
            parent?.value = textView.text
        }
    }
}
