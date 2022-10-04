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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.1.0-rc.2.zip",
      checksum: "65c50a411e44e99f4dfa5156a7d5b8ed5fbff87c9c0ceba139c6d2545a2181f5"
    ),
  ]
)
