// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeetCode2024",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LeetCode2024",
            targets: ["LeetCode2024"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LeetCode2024"),
        .testTarget(
            name: "LeetCode2024Tests",
            dependencies: ["LeetCode2024"]),
    ]
)
