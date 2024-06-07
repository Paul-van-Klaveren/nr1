// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Nr1",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "Nr1",
            targets: ["Nr1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.3"),
        .package(url: "https://github.com/Paul-van-Klaveren/nr2.git", exact: "1.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.10.0"),
    ],
    targets: [
        .target(
            name: "Nr1",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "Nr2", package: "nr2"),
            ],
            path: "Nr1"
        ),
        .testTarget(
            name: "Nr1Tests",
            dependencies: [
                "Nr1",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
            ]),
    ]
)
