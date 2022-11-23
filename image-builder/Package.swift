// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "image-builder",
    // platforms: [.macOS(.v10_15)],
    dependencies: [
        .package(name: "SwiftImage", url: "https://github.com/koher/swift-image", branch: "master")
    ],
    targets: [
        .executableTarget(
            name: "image-builder",
            dependencies: [
                .product(name: "SwiftImage", package: "SwiftImage")
            ]),
        .testTarget(
            name: "image-builderTests",
            dependencies: ["image-builder"]),
    ]
)
