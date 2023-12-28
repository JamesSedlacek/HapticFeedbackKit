// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HapticFeedbackKit",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "HapticFeedbackKit",
            targets: ["HapticFeedbackKit"]),
    ],
    targets: [
        .target(
            name: "HapticFeedbackKit"),
        .testTarget(
            name: "HapticFeedbackKitTests",
            dependencies: ["HapticFeedbackKit"]),
    ]
)
