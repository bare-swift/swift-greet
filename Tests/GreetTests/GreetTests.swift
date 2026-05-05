// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

import Testing
@testable import Greet

@Suite("Greet")
struct GreetTests {
    @Test("greets with a default polite phrasing")
    func basic() {
        #expect(Greet.greet(name: "world") == "Hello, world!")
    }

    @Test("trims whitespace around the name")
    func trims() {
        #expect(Greet.greet(name: "  Ada  ") == "Hello, Ada!")
    }

    @Test("falls back to 'friend' for empty input")
    func empty() {
        #expect(Greet.greet(name: "") == "Hello, friend!")
        #expect(Greet.greet(name: "   ") == "Hello, friend!")
    }
}
