// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
        name: "LDKSwift",
        products: [
            .library(
                    name: "LDKSwift",
                    targets: ["LDKSwift"]),
            // .library(name: "LDKSwift", type: .dynamic, targets: ["LDKSwift"])
        ],
        dependencies: [
            .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0"..<"3.0.0")
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(name: "LDKHeaders"),
            // .systemLibrary(name: "LDKHeaders"),
            .target(
                    name: "LDKSwift",
                    dependencies: [
                        "LDKHeaders"
                    ],
                    path: nil,
                    exclude: [],
                    sources: nil,
                    // sources: [
                    //     "ldk_net.h",
                    //     "ldk_net.c",
                    //     "ldk_rust_types.h",
                    //     "ldk_ver.h",
                    //     "lightning.h",
                    //     "SanitySample.swift"
                    // ],
                    resources: nil,
                    publicHeadersPath: "include",
                    cSettings: nil,
                    // cSettings: [
                    //     .headerSearchPath("include"),
                    // ],
                    cxxSettings: nil,
                    swiftSettings: nil,
                    linkerSettings: [
                        .linkedLibrary(String(utf8String: getenv("LDK_C_BINDINGS_BASE")!)! + "/lightning-c-bindings/target/debug/libldk.a"),
                        .linkedLibrary(String(utf8String: getenv("LLVM_CLANG_ASAN_PATH")!)!),
                    ]),
            .testTarget(
                    name: "LDKSwiftTests",
                    dependencies: [
                        "LDKSwift",
                        "LDKHeaders",
                        .product(name: "Crypto", package: "swift-crypto")
                    ],
                    path: nil,
                    exclude: [],
                    // exclude: ["SampleTest.swift"],
                    sources: nil,
                    // sources: [
                    //     "SampleTest.swift"
                    // ],
                    cSettings: nil, cxxSettings: nil, swiftSettings: nil,
                    linkerSettings: nil)

        ]
)
