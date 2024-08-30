// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Leetcode",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .macCatalyst(.v13), .tvOS(.v13), .visionOS(.v1), .watchOS(.v6)
    ],
    dependencies: [
      .package(url: "https://github.com/swiftlang/swift-testing", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Leetcode",
            path: "Sources"),
        .testTarget(
            name: "LeetcodeTests",
            dependencies: [
                "Leetcode",
                .product(name: "Testing", package: "swift-testing"),
            ]
        )
    ]
)
