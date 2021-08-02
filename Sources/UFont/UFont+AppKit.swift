#if canImport(AppKit)

import AppKit

@available(macOS 10.15, iOS 13.0, *)
extension UFont {
	public var appKit: NSFont? {
		switch family {
		case let .system(design, weight):
			let font = NSFont.systemFont(ofSize: size, weight: weight.appKit)
			
			return font.fontDescriptor.withDesign(design.appKit)
				.flatMap {
					NSFont(descriptor: $0, size: size)
				} ?? font
			
		case let .custom(name):
			let descriptor = NSFontDescriptor(name: name, size: size)
			return NSFont(descriptor: descriptor, size: size)
		}
	}
}

#endif
