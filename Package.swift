// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "vlckit-iptelevision",
    platforms: [
        .iOS(.v9),
        .tvOS(.v11),
        .macOS(.v10_11),
        .visionOS(.v1),
        .watchOS(.v7_4)
    ],
    products: [
        .library(
            name: "vlckit-iptelevision",
            targets: ["vlckit-iptelevision"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "vlckit-iptelevision",
            url: "https://download.videolan.org/cocoapods/unstable/VLCKit-4.0.0a10-d962e05c-17860384.tar.xz",
            checksum: "8d3b1f8d1b6e4fc35d45b706a800a424a1b841d2dc5d4229817a3d7a000bf372"
        )
    ]
)
