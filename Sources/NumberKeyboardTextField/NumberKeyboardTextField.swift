import SwiftUI

public struct NumberKeyboardTextField: UIViewRepresentable {
    @Binding var value: Int

    let placeholder: String?
    let validateText: (() -> Void)?

    public init(value: Binding<Int>, placeholder: String? = nil, validateText: (() -> Void)? = nil) {
        _value = value
        self.placeholder = placeholder
        self.validateText = validateText
    }

    public func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.placeholder = placeholder
        textField.textAlignment = .right
        textField.textColor = .tintColor
        textField.font = .preferredFont(forTextStyle: .body)
        textField.adjustsFontForContentSizeCategory = true

        let inputView = NumberKeyboard { element in
            switch element {
            case .number(let number):
                textField.text?.append(number.formatted())
            case .delete:
                _ = textField.text?.popLast()
            case .enter:
                textField.resignFirstResponder()

                if let text = textField.text, let value = try? Int(text, format: .number) {
                    self.value = value
                } else {
                    textField.text = value.formatted()
                }

                validateText?()
            }
        }

        textField.inputView = inputView

        return textField
    }

    public func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = value.formatted()
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(numberTextField: self)
    }
}

extension NumberKeyboardTextField {
    public class Coordinator: NSObject, UITextFieldDelegate {
        private let numberTextField: NumberKeyboardTextField

        init(numberTextField: NumberKeyboardTextField) {
            self.numberTextField = numberTextField
        }

        public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            let position = textField.endOfDocument
            textField.selectedTextRange = textField.textRange(from: position, to: position)

            return true
        }

        public func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.textColor = .label
        }

        public func textFieldDidEndEditing(_ textField: UITextField) {
            textField.textColor = .tintColor
        }
    }
}

