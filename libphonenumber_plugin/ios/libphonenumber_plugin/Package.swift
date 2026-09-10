// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "libphonenumber_plugin",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "libphonenumber-plugin",
            targets: ["libphonenumber_plugin"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit.git", from: "3.8.0")
    ],
    targets: [
        .target(
            name: "libphonenumber_plugin",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "PhoneNumberKit", package: "PhoneNumberKit")
            ],
            path: "Sources/libphonenumber_plugin"
        )
    ]
)
