// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ant",
    platforms: [.iOS(.v11), .watchOS(.v4), .tvOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "Ant", targets: ["Ant"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "libical", path: "libical", publicHeadersPath: "public", cSettings: [
            .define("HAVE_CONFIG_H"),
            .define("_GNU_SOURCE", .when(platforms: [Platform.linux])),
            .define("HAVE_ENDIAN_H", .when(platforms: [Platform.linux])),
            .define("HAVE_BYTESWAP_H", .when(platforms: [Platform.linux])),
            .define("PACKAGE_DATA_DIR=\"/tmp/zoneinfo\""),
            .headerSearchPath("include")
        ]),
        .target(name: "Ant", dependencies: ["libical"], resources: [.copy("../../libical/zoneinfo")]),
        .testTarget(name: "AntTests", dependencies: ["Ant"]),
    ]
)

