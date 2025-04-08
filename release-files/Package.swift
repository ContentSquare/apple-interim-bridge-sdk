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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.2"),
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK_DYNAMIC.git", from: "4.41.0"),
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
            url: "https://github.com/ContentSquare/apple-interim-bridge-sdk/releases/download/0.9.1/package.zip",
            checksum: "876661497649dd84408a9f022d3c6f814c0fbbe3d6c8d084e2f97cf2c4d0cb1d"
        ),
    ]
)
