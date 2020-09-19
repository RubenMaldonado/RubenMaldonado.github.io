// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PublishMaxstery",
    products: [
        .executable(
            name: "PublishMaxstery",
            targets: ["PublishMaxstery"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "PublishMaxstery",
            dependencies: ["Publish"]
        )
    ]
)