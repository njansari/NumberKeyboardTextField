// swift-tools-version:5.5

import PackageDescription

let platforms: [SupportedPlatform] = [.iOS(.v15)]
let products: [Product] =  [.library(name: "NumberKeyboardTextField", targets: ["NumberKeyboardTextField"])]
let targets: [Target] = [.target(name: "NumberKeyboardTextField")]

let package = Package(name: "NumberKeyboardTextField", platforms: platforms, products: products, targets: targets)
