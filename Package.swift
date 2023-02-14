// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "kustomer-ios",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "kustomer-ios",
      targets: ["KustomerChat", "WrapperTarget"])
  ],
  dependencies: [
    .package(name: "PubNub", url: "https://github.com/pubnub/swift.git", from: "5.0.0"),
    .package(name: "Down", url: "https://github.com/kustomer/Down", from: "0.11.0")
  ],
  targets: [
    .binaryTarget(
      name: "KustomerChat",
      url: "https://github.com/SamuelBoyce/kustomer-ios-testing/releases/download/2.7.8/KustomerChat.zip",
      checksum: "8439b7c3de51fa428efd1fda2a0d76674e7aed2e3dcf03cc2affe261196a94ef"
    ),
    .target(
      name: "WrapperTarget",
      dependencies: ["PubNub", "Down"]
    )
  ]
)
