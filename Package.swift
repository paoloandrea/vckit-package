// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "VLCKitIPTV",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
        .tvOS(.v11),
        .watchOS(.v7_4),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "VLCKitIPTV",
            targets: ["VLCKitIPTV"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VLCKitIPTV",
            url: "https://github.com/paoloandrea/vckit-package/releases/download/v4.0.0a10/VLCKit.xcframework.zip",
            checksum: "8add195287f3c5a1a1d6581cf08e2b987c7857814baff819dae4fa071bd3d974"
        )
    ]
)