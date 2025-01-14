// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "EMVCardReader",
    platforms: [
        .iOS(.v11) // Adjust the minimum deployment target as needed
    ],
    products: [
        .library(
            name: "EMVCardReader",
            targets: ["EMVCardReader"]
        ),
    ],
    dependencies: [
        // Add external dependencies here, if any
    ],
    targets: [
        .target(
            name: "EMVCardReader",
            dependencies: [],
            path: "Sources", // Adjust to the correct source folder path
            exclude: [
                "Example",
                "Tests",
                "README.md",
                "LICENSE"
            ], // Exclude non-source files
            resources: [
                .process("Resources") // Adjust if there are resource files
            ]
        ),
        .testTarget(
            name: "EMVCardReaderTests",
            dependencies: ["EMVCardReader"],
            path: "Tests" // Adjust to the correct test folder path
        ),
    ]
)
