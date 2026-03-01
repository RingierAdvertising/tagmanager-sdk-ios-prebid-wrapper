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
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.3.0/PrebidMobile.xcframework.zip",
            checksum: "851b4037c9dc67aa675835f4e663df174b9aa3a1b93eb110b229f3a1a1e92daf"
        ),
        .binaryTarget(
            name: "OMSDK_Prebidorg",
            url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper/releases/download/3.3.0/OMSDK_Prebidorg.xcframework.zip",
            checksum: "5e8ef5e13566d18f83a925e6218f5b675abe17b87fae6bda1a86ccf3dd210ed8"
        )
    ]
)
