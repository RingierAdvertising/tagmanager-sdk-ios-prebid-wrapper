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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.2.0/PrebidMobile.xcframework.zip",
            checksum: "69b64fd4741e9c3c41f7f82b97b7526821f65cd69d9f3250e006779e373ed7ba"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.2.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "353417ffee0e0ce52b1b3211b997d56a6e30b2325599345df0080c5f9027f334"
        )
    ]
)
