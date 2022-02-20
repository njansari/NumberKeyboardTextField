import UIKit

extension UIColor {
    class var keyboardButtonColor: UIColor {
        UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(displayP3Red: 0.427, green: 0.424, blue: 0.424, alpha: 1)
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
                return UIColor(displayP3Red: 0.816, green: 0.761, blue: 0.725, alpha: 1)
            }
        }
    }

    class var keyboardBackgroundColor: UIColor {
        UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(displayP3Red: 0.176, green: 0.176, blue: 0.176, alpha: 1)
            default:
                return UIColor(displayP3Red: 0.851, green: 0.827, blue: 0.820, alpha: 1)
            }
        }
    }
}
