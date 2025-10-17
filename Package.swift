// swift-tools-version:5.6

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "AppLovinAdapter",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "AppLovinAdapterTarget",
      targets: ["AppLovinAdapterTarget"]
    )
  ],
  dependencies: [
      .package(
          url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
          exact: "13.4.0"
      )
    ],
  targets: [
    .target(
      name: "AppLovinAdapterTarget",
      dependencies: [
        .target(name: "AppLovinAdapter"),
        .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
      ],
      path: "AppLovinAdapterTarget"
    ),
    .binaryTarget(
      name: "AppLovinAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/applovin/AppLovinAdapter-13.4.0.0.zip",
      checksum: "39120e83712796ae34eef9eb730ac1d3d8efa92431ba2aa3146e2ee84e84cc11"
    ),
  ]
)
