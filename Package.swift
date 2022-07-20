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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.0.0.zip",
      checksum: "8dea2deb69e09551b5a1f56b1681793ddf0d618cdb048493b4f8f1655264f095"
    ),
  ]
)
