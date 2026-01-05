# Prebid Mobile iOS SDK Wrapper

A Swift Package Manager wrapper for the [Prebid Mobile iOS SDK](https://github.com/prebid/prebid-mobile-ios). This package distributes pre-built XCFrameworks for easy integration via SPM.

## Requirements

- iOS 12.0+
- Xcode 14.0+
- Swift 5.7+

## Installation

### Swift Package Manager

Add this package to your Xcode project:

1. In Xcode, go to **File > Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper
   ```
3. Select the version you want to use
4. Click **Add Package**

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/RingierAdvertising/tagmanager-sdk-ios-prebid-wrapper", from: "3.2.0")
]
```

Then add the dependency to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "PrebidMobile", package: "tagmanager-sdk-ios-prebid-wrapper")
    ]
)
```

## Included Frameworks

This package includes the following XCFrameworks:

- **PrebidMobile.xcframework** - The main Prebid Mobile SDK
- **OMSDK_Prebidorg.xcframework** - Open Measurement SDK for viewability measurement

## Usage

After adding the package, import PrebidMobile in your Swift files:

```swift
import PrebidMobile
import OMSDK_Prebidorg
```

For detailed usage instructions, refer to the [Prebid Mobile iOS documentation](https://docs.prebid.org/prebid-mobile/pbm-api/ios/ios-sdk-integration.html).

## Versioning

This wrapper follows the same versioning as the upstream [prebid-mobile-ios](https://github.com/prebid/prebid-mobile-ios) repository. Each release corresponds to a specific Prebid SDK version.

## Releasing New Versions

New versions are released via GitHub Actions:

1. Go to **Actions** > **Build and Release Prebid XCFrameworks**
2. Click **Run workflow**
3. Enter the Prebid SDK version to build (e.g., `3.2.0`)
4. Click **Run workflow**

The workflow will:
- Build the XCFrameworks from the specified Prebid SDK version
- Update `Package.swift` with new checksums
- Create a GitHub release with the XCFramework assets

## License

This wrapper is distributed under the same license as the Prebid Mobile iOS SDK. See the [Prebid Mobile iOS LICENSE](https://github.com/prebid/prebid-mobile-ios/blob/master/LICENSE) for details.
