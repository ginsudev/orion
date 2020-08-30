import Foundation

public protocol AnyHook {
    static var shouldActivate: Bool { get }
}

extension AnyHook {
    public static var shouldActivate: Bool { true }
}

public protocol ConcreteHook: AnyHook {
    static func activate(withBackend backend: Backend)
}
