// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalzMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LocalzMobileSDK",
            type: .dynamic,
            targets: ["LocalzMobileSDK"]),
        .library(
            name: "Apollo",
            type: .dynamic,
            targets: ["LocalzMobileSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Apollo", url: "https://github.com/apollographql/apollo-ios.git", .upToNextMajor(from: "0.48.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "LocalzMobileFramework",
            path: "./Sources/LocalzMobileSDK.xcframework"),
        .target(
            name: "LocalzMobileSDK",
            dependencies: ["LocalzMobileFramework",
                           .product(name: "Apollo-Dynamic", package: "Apollo"),
                           .product(name: "ApolloWebSocket", package: "Apollo"),
                           .product(name: "ApolloSQLite", package: "Apollo")],
            path: "./Sources/LocalzMobileSDK"
        )
    ]
)
