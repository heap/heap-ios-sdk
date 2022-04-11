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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.0.0-alpha.2.zip",
      checksum: "ff9742c3674f24a13ebab2dc38d80cdd9ffa9a79aa59385b7ee1103204175f0f"
    ),
  ]
)
