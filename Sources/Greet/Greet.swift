// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// Copyright (c) 2026 The bare-swift Project Authors.

import Foundation

/// `Greet` is the throwaway demo package that proves the bare-swift Phase 0
/// pipeline works end-to-end.
public enum Greet: Sendable {
    /// Returns a polite greeting for `name`. Empty / whitespace-only input
    /// falls back to "friend".
    public static func greet(name: String) -> String {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        let target = trimmed.isEmpty ? "friend" : trimmed
        return "Hello, \(target)!"
    }
}
