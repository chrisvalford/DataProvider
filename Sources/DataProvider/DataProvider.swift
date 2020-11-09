import SwiftUI

public class DelayedUpdater: ObservableObject {

    @Published public var value = 0

    public init() {
        for i in 1...100 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}

public class DelayedUpdater2: ObservableObject {

    public var value = 0 {
        willSet {
            objectWillChange.send()
        }
    }

    public init() {
        for i in 1...60 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}
