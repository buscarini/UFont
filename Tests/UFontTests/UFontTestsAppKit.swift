#if canImport(AppKit)

import Foundation
import XCTest
import SwiftUI
import AppKit
@testable import UFont

@available(iOS 13.0, *)
class UFontTestsAppKit: XCTestCase {
	func testUFontDesign() {
		XCTAssertEqual(NSFontDescriptor.SystemDesign.default, UFontDesign.default.appKit)
		XCTAssertEqual(NSFontDescriptor.SystemDesign.serif, UFontDesign.serif.appKit)
		XCTAssertEqual(NSFontDescriptor.SystemDesign.rounded, UFontDesign.rounded.appKit)
		XCTAssertEqual(NSFontDescriptor.SystemDesign.monospaced, UFontDesign.monospaced.appKit)
	}
	
	func testUFontWeight() {
		XCTAssertEqual(NSFont.Weight.ultraLight, UFontWeight.ultraLight.appKit)
		XCTAssertEqual(NSFont.Weight.thin, UFontWeight.thin.appKit)
		XCTAssertEqual(NSFont.Weight.light, UFontWeight.light.appKit)
		XCTAssertEqual(NSFont.Weight.regular, UFontWeight.regular.appKit)
		XCTAssertEqual(NSFont.Weight.medium, UFontWeight.medium.appKit)
		XCTAssertEqual(NSFont.Weight.semibold, UFontWeight.semibold.appKit)
		XCTAssertEqual(NSFont.Weight.bold, UFontWeight.bold.appKit)
		XCTAssertEqual(NSFont.Weight.heavy, UFontWeight.heavy.appKit)
		XCTAssertEqual(NSFont.Weight.black, UFontWeight.black.appKit)
	}
}

#endif
