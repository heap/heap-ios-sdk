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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.1.0.zip",
      checksum: "22f2a62ea1e52133036a8f59d650e60150710a22f49c038690d69763ba2dad4d"
    ),
  ]
)
