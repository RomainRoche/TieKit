// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TieKit",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "TieKit", type: .dynamic, targets: ["TieKit"]),
    ],
    targets: [
        .target(
            name: "TieKit"
        )
    ]
)
