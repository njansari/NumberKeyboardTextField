import UIKit

extension UIColor {
    class var keyboardButtonColor: UIColor {
        UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(displayP3Red: 0.424, green: 0.424, blue: 0.427, alpha: 1)
            default:
                return UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
    }

    class var highlightedKeyboardButtonColor: UIColor {
        UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(displayP3Red: 0.282, green: 0.282, blue: 0.282, alpha: 1)
            default:
                return UIColor(displayP3Red: 0.725, green: 0.761, blue: 0.816, alpha: 1)
            }
        }
    }

    class var keyboardBackgroundColor: UIColor {
        UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(displayP3Red: 0.176, green: 0.176, blue: 0.176, alpha: 1)
            default:
                return UIColor(displayP3Red: 0.820, green: 0.827, blue: 0.851, alpha: 1)
            }
        }
    }
}
