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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.1.0-rc.1.zip",
      checksum: "4ca0dcd11abaa45e54fd3d210830f8a1eb129d77422af6f2cde7ac171b531e0c"
    ),
  ]
)
