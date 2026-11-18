// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "swift-ac-miscellaneous",
  products: [
    .library(name: "Miscellaneous", targets: ["Miscellaneous"])
  ],
  targets: [
    .target(name: "Miscellaneous", dependencies: ["Idioms", "Sugar", "Recipes"]),
    .target(name: "Recipes"),
    .target(name: "Idioms"),
    .target(name: "Sugar"),
    .testTarget(name: "RecipesTests", dependencies: ["Recipes"]),
    .testTarget(name: "SugarTests", dependencies: ["Sugar"]),
  ]
)
