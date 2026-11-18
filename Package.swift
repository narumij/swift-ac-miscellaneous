// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "swift-ac-miscellaneous",
  products: [
    .library(name: "AcMiscellaneous", targets: ["AcMiscellaneous"])
  ],
  targets: [
    .target(name: "AcMiscellaneous"),
    .target(name: "Miscellaneous"),
    .target(name: "Convenience"),
    .target(name: "Idioms"),
    .target(name: "Sugar"),
    .testTarget(name: "MiscellaneousTests", dependencies: ["Miscellaneous"]),
    .testTarget(name: "ConvenienceTests", dependencies: ["Convenience"]),
    .testTarget(name: "SugarTests", dependencies: ["Sugar"]),
  ]
)
