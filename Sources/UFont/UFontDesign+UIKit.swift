#if canImport(UIKit)

import UIKit

@available(iOS 13.0, *)
extension UFontDesign {
	public var uiKit: UIFontDescriptor.SystemDesign {
		switch self {
		case .default:
			return .default
		case .serif:
			return .serif
		case .rounded:
			return .rounded
		case .monospaced:
			return .monospaced
		}
	}
}

#endif
