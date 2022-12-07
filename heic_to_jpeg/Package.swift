// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "heic_to_jpeg",
    dependencies: [
        .package(name: "SwiftImage", url: "https://github.com/koher/swift-image", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "heic_to_jpeg",
            dependencies: [
                .product(name: "SwiftImage", package: "SwiftImage")
            ]),
        .testTarget(
            name: "heic_to_jpegTests",
            dependencies: ["heic_to_jpeg"]),
    ]
)
