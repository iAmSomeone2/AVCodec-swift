// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AVCodec",
    products: [
        .library(name: "AVCodec", targets: ["AVCodec"])
    ],
    targets: [
        .systemLibrary(name: "AVCodec", pkgConfig: "libavcodec", providers: [
            .brew(["ffmpeg"])
        ])
    ]
)
