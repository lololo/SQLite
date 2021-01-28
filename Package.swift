// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SQLite",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v10), .watchOS(.v3)],
    products: [.library(name: "SQLite", targets: ["SQLite"])],
    targets: [
        .target(name: "SQLite", dependencies: ["SQLiteObjc"],exclude:["Info.plist"]),
        .target(name: "SQLiteObjc"),
        .testTarget(name: "SQLiteTests", dependencies: ["SQLite"], path: "Tests/SQLiteTests")
    ]
)
