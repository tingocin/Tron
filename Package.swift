// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Tron",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "Tron",
            targets: ["Tron"]),
    ],
    targets: [
        .target(
            name: "Tron",
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Tron"],
            path: "Tests"),
    ]
)
