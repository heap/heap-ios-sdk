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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-9.1.0-rc.1.zip",
      checksum: "05caf202a9dfea44675c3d7727bab5163191322bc106b96d56e2093066a67de2"
    ),
  ]
)
