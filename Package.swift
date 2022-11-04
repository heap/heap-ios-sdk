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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.2.2.zip",
      checksum: "0d7d67099629868acdc65ac5044115acb51baa75943b55ad611ed223d0699ab9"
    ),
  ]
)
