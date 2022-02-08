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
      url: "https://cdn.heapanalytics.com/ios/heap-ios-8.1.0-rc.2.zip",
      checksum: "7ef0cfe18807a6aac08a249445798470f3ab24eda9e85497678d4ad5f07d0bfe"
    ),
  ]
)
