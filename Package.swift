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
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK_DYNAMIC.git", from: "4.43.0"),
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
            url: "https://github.com/ContentSquare/apple-interim-bridge-sdk/releases/download/0.11.0/package.zip",
            checksum: "8298684312274be3a42a36252e0e04d9440a214c635802a52840da4c1715dad2"
        ),
    ]
)
