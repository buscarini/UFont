#if canImport(AppKit)

import AppKit

@available(macOS 10.15, iOS 13.0, *)
extension UFontDesign {
	public var appKit: NSFontDescriptor.SystemDesign {
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
