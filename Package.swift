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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.0.0.zip",
      checksum: "cc01cfe9e245470ada12169cff2fb256e1cebf2e2ae778f3ce53d9bb47d97ef6"
    ),
  ]
)
