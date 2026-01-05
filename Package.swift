// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "PrebidMobileWrapper",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "PrebidMobile",
            targets: ["PrebidMobileTarget", "OMSDK_Prebidorg"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "PrebidMobileTarget",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/0.0.0/PrebidMobile.xcframework.zip",
            checksum: "CHECKSUM_PLACEHOLDER"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/0.0.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "CHECKSUM_PLACEHOLDER"
        )
    ]
)
