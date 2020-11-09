import SwiftUI

@available(OSX 10.15, *)

public class DelayedUpdater: ObservableObject {

    @Published var value = 0

    public init() {
        for i in 1...100 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}
