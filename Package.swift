// swift-tools-version: 6.4
import PackageDescription

// Apply compiler policy to our targets; dependency modules keep their own settings.
let appleSwiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("InternalImportsByDefault"),
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("InferIsolatedConformances"),
    .enableUpcomingFeature("ImmutableWeakCaptures"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
    .defaultIsolation(nil),
    .strictMemorySafety(),
    .treatAllWarnings(as: .error),
]

let package = Package(
    name: "SaunaAdminFoundation",
    platforms: [.iOS("27.2"), .macOS("27.0")],
    products: [.library(name: "SaunaAdminFoundation", targets: ["SaunaAdminFoundation"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-http-api-proposal.git", branch: "main"),
        .package(url: "https://github.com/square/Valet.git", from: "5.0.0"),
        .package(url: "https://github.com/sindresorhus/Defaults.git", from: "9.0.0"),
        .package(url: "https://github.com/gohanlon/swift-memberwise-init-macro.git", from: "0.6.0"),
        .package(url: "https://github.com/apple/swift-http-types.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-async-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-collections.git", from: "1.1.0"),
        .package(url: "https://github.com/fumoboy007/swift-retry.git", from: "0.2.4"),
        .package(url: "https://github.com/mtj0928/swift-async-operations.git", from: "0.5.0"),
    ],
    targets: [.target(name: "SaunaAdminFoundation", swiftSettings: appleSwiftSettings)],
    swiftLanguageModes: [.v6]
)
