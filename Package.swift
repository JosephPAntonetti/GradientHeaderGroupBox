// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GradientHeaderGroupBox",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "GradientHeaderGroupBox",
            targets: ["GradientHeaderGroupBox"]),
    ],
    targets: [
        .target(
            name: "GradientHeaderGroupBox")
    ]
)
