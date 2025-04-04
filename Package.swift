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
            targets: ["ContentsquareInterimBridge"])
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
            url: "https://github.com/ContentSquare/apple-interim-bridge-sdk/releases/download/0.9.0/package.zip",
            checksum: "81f3d35f31ac6663674d8c2e945c2c0e0f3d8dc65e238a2e0ad2828aa89989f3"
        ),
    ]
)
