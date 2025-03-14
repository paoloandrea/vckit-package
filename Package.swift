// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "VLC",
  platforms: [
    .iOS(.v17),
    .tvOS(.v17),
    .macOS(.v14),
    .visionOS(.v1),
  ],
  products: [
    .library(
      name: "VLC",
      targets: [
        "VLC",
      ]
    ),
  ],
  targets: [
    .target(
      name: "VLC",
      dependencies: [
        .target(name: "VLCKit"),
      ],
      path: "Sources"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/paoloandrea/vckit-package/releases/download/v4.0.0a10/VLCKit.xcframework.zip",
      checksum: "8add195287f3c5a1a1d6581cf08e2b987c7857814baff819dae4fa071bd3d974"
    ),
  ]
)