// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LifetimeTracker",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .watchOS(.v6),
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "LifetimeTracker",
            targets: ["LifetimeTracker"]
        ),
    ],
    targets: [
        .target(
            name: "LifetimeTracker",
            path: "Sources",
            resources: [
                .process("Resources"),
                .process("Localizable.strings", localization: .default),
            ]
        )
    ]
)
