// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "demo",
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", .upToNextMinor(from: "0.21.0")),
        .package(url: "https://github.com/SwiftGen/StencilSwiftKit.git", from: "2.4.0")
    ],
    targets: [
        .target(
            name: "demo",
            dependencies: [
                "SourceKittenFramework",
                "StencilSwiftKit"
            ]
        ),
    ]
)
