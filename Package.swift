// swift-tools-version: 5.4

import PackageDescription

 let package = Package(
     name: "lightstep-tracer",
     platforms: [
        .iOS(.v8),
        .macOS(.v10_15)
     ],
     products: [
        .library(
            name: "LightStep",
            targets: ["LightStep"]
        )
     ],
     dependencies: [
        .package(url: "https://github.com/SerhanAksut/opentracing-objc.git", .branch("spm-support"))
     ],
     targets: [
        .target(
            name: "LightStep",
            dependencies: [
                .product(name: "opentracing", package: "opentracing-objc")
            ],
            path: "Pod/Classes",
            publicHeadersPath: ""
        )
     ]
 )
