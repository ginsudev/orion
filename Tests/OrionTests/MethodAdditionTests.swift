import XCTest
import Orion
import OrionTestSupport

@objc protocol TestProtocol {
    @objc optional func someTestProtocolMethod() -> String
}

@objc protocol TestClassProtocol {
    @objc optional func someTestProtocolClassMethod() -> String
}

final class MethodAdditionTests: XCTestCase {

    func testAddedMethod() {
        XCTAssertEqual(BasicClass().as(interface: TestProtocol.self).someTestProtocolMethod?(), "New method")
    }

    func testAddedClassMethod() {
        XCTAssertEqual(BasicClass.as(interface: TestClassProtocol.self).someTestProtocolClassMethod?(), "New class method")
    }

}
