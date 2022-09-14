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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.0.1.zip",
      checksum: "78d8f91e8a94506b3772d9064656945c05389fe5e380f8e2e54b1fc22b1b0f02"
    ),
  ]
)
