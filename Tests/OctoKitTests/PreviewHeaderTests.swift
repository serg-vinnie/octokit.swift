import OctoKit
import XCTest

class PreviewHeaderTests: XCTestCase {
    func testReactionsPreview() {
        let sut = CustomHeader.reactions
        XCTAssertEqual(sut.header.headerField, "Accept")
        XCTAssertEqual(sut.header.value, "application/vnd.github.squirrel-girl-preview")
    }
}
