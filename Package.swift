// swift-tools-version: 6.0
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// Copyright (c) 2026 The bare-swift Project Authors.

import PackageDescription

let package = Package(
    name: "swift-greet",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "Greet", targets: ["Greet"])
    ],
    targets: [
        .target(name: "Greet"),
        .testTarget(
            name: "GreetTests",
            dependencies: ["Greet"],
            resources: [.copy("../Vectors")]
        )
    ]
)
