// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DiffableDataSources",
    platforms: [
        .iOS(.v9), .macOS(.v10_11), .tvOS(.v9)
    ],
    products: [
        .library(name: "DiffableDataSources", targets: ["DiffableDataSources"])
    ],
    dependencies: [
        .package(url: "https://github.com/berbschloe/DifferenceKit.git", .branch("berbs/remove-no-window-check"))
    ],
    targets: [
        .target(
            name: "DiffableDataSources",
            dependencies: ["DifferenceKit"],
            path: "Sources"
        ),
        .testTarget(
            name: "DiffableDataSourcesTests",
            dependencies: ["DiffableDataSources"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
