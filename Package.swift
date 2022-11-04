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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.0.2.zip",
      checksum: "b7432320b6865e4f6a8e6a0f6f625d08f4b142237dd7c0f8bde8f41a75cf174c"
    ),
  ]
)
