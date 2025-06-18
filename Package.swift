// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ContentsquareInterimBridge",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ContentsquareInterimBridge",
            targets: ["__ContentsquareInterimBridge"])
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.6"),
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK_DYNAMIC.git", from: "4.42.1"),
    ],
    targets: [
        .target(
            name: "__ContentsquareInterimBridge",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                .product(name: "ContentsquareModule", package: "CS_iOS_SDK_DYNAMIC"),
                "ContentsquareInterimBridge",
            ]),
        .binaryTarget(
            name: "ContentsquareInterimBridge",
            url: "https://github.com/ContentSquare/apple-interim-bridge-sdk/releases/download/0.10.0/package.zip",
            checksum: "ccc2e3805a4f4934e4c7071e644c184f0d646b92bacb4a76e5d3dc04ca5c72fd"
        ),
    ]
)
