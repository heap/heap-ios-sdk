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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.0.0-alpha.1.zip",
      checksum: "0a122676187bf0a14058cadaf105ab39734912912677b55020d1bb1ad2afa184"
    ),
  ]
)
