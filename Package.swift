// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "face_match",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "face_match",
            targets: [
                "face_match",
                "face_match_sdk_core",
                "face_match_face_tracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "face_match",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/face_match.zip",
            checksum: "4a8c562ecc0cb2377ae09a4dce168b156b0748ee3b19435f47eb7f7b958f1f9c"
        ),
        .target(
            name: "face_match_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "face_match_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
    ]
)
