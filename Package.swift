// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Bapfs",
    products: [
        .executable(
            name: "Bapfs",
            targets: ["Bapfs"]
        )
    ],
    dependencies: [
	    // 0.9.0 introduces concurrency, which causes our generation to fail.
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", branch: "0.8.0")
    ],
    targets: [
        .target(
            name: "Bapfs",
            dependencies: [
                "Publish"
            ]
        )
    ]
)
