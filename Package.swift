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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.2.0.zip",
      checksum: "eb84fef3c6a5a7d7addecea0e491a64c00add04220507b00252daac1b22c6e5a"
    ),
  ]
)
