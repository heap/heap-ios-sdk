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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.2.1.zip",
      checksum: "91af8fe8160e28149cb02d19c1c1ecbb92606c5d14de2b7498a7bd2e5b608f05"
    ),
  ]
)
