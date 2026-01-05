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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.1.1/PrebidMobile.xcframework.zip",
            checksum: "3f48f572aa5c4b2665d0705dcc3f0166078d8cebaa3827228fcfc3cc0e316d1d"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.1.1/OMSDK_Prebidorg.xcframework.zip",
            checksum: "8fa834bcfa43f786dde0ab5e51c763f09f19cf7c59ddf20ff40f6c5ab51f546e"
        )
    ]
)
