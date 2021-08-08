import Foundation

public enum UFontDesign: String, Equatable, Hashable, Codable {
	case `default`
	case serif
	case rounded
	case monospaced
}

import SwiftUI

@available(macOS 10.15, iOS 13.0, *)
extension UFontDesign {
	public var swiftUI: Font.Design {
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
