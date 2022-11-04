// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Heap",
  platforms: [.iOS(.v10)],
  products: [
      .library(
          name: "Heap",
          targets: ["Heap"]
      )
  ],
  targets: [
    .binaryTarget(
      name: "Heap",
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.1.0.zip",
      checksum: "e51d57173004ba4f62e9d50f5129954d5e3937481e4b67307756f2090bf207ce"
    ),
  ]
)
