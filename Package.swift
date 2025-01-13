// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "VLCKitIPTelevision",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11)],
    products: [
        .library(
            name: "VLCKitIPTelevision",
            targets: ["VLCKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VLCKit",
            url: "https://github.com/paoloandrea/vckit-package/releases/download/v4.0.0a9/VLCKit.xcframework.zip", 
            checksum: "62144b9e9c25b349b3b6ffe8ee2f7f8641587e21a0e18078986d975c140bfb6b"
        ),
        .target(
            name: "VLCKitIPTelevision",
            dependencies: ["VLCKit"],
            linkerSettings: [
                .linkedFramework("QuartzCore", .when(platforms: [.iOS])),
                .linkedFramework("CoreText", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("AVFoundation", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("Security", .when(platforms: [.iOS])),
                .linkedFramework("CFNetwork", .when(platforms: [.iOS])),
                .linkedFramework("AudioToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("OpenGLES", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                .linkedFramework("VideoToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreMedia", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("c++", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("xml2", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("z", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("bz2", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("Foundation", .when(platforms: [.macOS])),
                .linkedLibrary("iconv")
            ]
        )
    ]
)

