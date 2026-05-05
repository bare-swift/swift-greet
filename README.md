# swift-greet

A friendly greeter — the throwaway demo package that proves the bare-swift Phase 0 pipeline works end-to-end.

Part of the [bare-swift](https://github.com/bare-swift) ecosystem.

## Install

Add to your `Package.swift`:

```swift
.package(url: "https://github.com/bare-swift/swift-greet.git", from: "0.1.0")
```

Then depend on the `Greet` product:

```swift
.product(name: "Greet", package: "swift-greet")
```

## Usage

```swift
import Greet

let message = Greet.greet(name: "world")
print(message) // Hello, world!
```

## Documentation

Full DocC documentation: <https://bare-swift.github.io/swift-greet/>

## Source

Translated from the Rust crate [`(none)`]((none)). (No upstream Rust crate; this is a native bare-swift package.)

## License

Apache 2.0 with LLVM exception. See [LICENSE](./LICENSE) and [NOTICE](./NOTICE).
