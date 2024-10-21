// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "image_convert",
    dependencies: [
        .package(name: "SwiftImage", url: "https://github.com/koher/swift-image", branch: "master"),
        .package(name: "WebP", url: "https://github.com/ainame/Swift-WebP", revision: "c779973"),
        .package(name: "swift-argument-parser", url: "https://github.com/apple/swift-argument-parser", from: "1.5.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "image_convert",
            dependencies: [
                .product(name: "SwiftImage", package: "SwiftImage"),
                .product(name: "WebP", package: "WebP"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ])
    ]
)
