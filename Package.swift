// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestXCFrameworkPkg",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TestXCFramework",
            targets: ["TestXCFramework"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TestXCFramework", // 必須等於 .xcframework 內的 Module 名
            url: "https://github.com/YuKi-Wang1124/TestXCFrameworkPkg/releases/download/1.0.0/TestXCFramework.xcframework.zip",
            checksum: "beea6040b02f9c22e1c6db6bc046cd99ab738cfc600ae17b6dda280b7123c571"
        ),
        .testTarget(
            name: "TestXCFrameworkTests",
            dependencies: ["TestXCFramework"]
        ),
    ]
)
