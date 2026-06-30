// swift-tools-version: 5.9
import PackageDescription

let baseURL = "https://github.com/andreanlay-astro/datadog-ios-xcframework/releases/download/3.1.0/"

let package = Package(
    name: "DatadogSDKFramework",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "DatadogCore", targets: ["DatadogCore", "DatadogInternal"]),
        .library(name: "DatadogLogs", targets: ["DatadogLogs"]),
        .library(name: "DatadogRUM", targets: ["DatadogRUM"]),
        .library(name: "DatadogTrace", targets: ["DatadogTrace", "OpenTelemetryApi"]),
        .library(name: "DatadogCrashReporting", targets: ["DatadogCrashReporting", "CrashReporter"]),
    ],
    targets: [
        .binaryTarget(name: "DatadogCore", url: "\(baseURL)DatadogCore.xcframework.zip", checksum: "b8ec453d9768ddebda61ca8679e565e18a6a474b78b859668bb51c9a6beb84b9"),
        .binaryTarget(name: "DatadogInternal", url: "\(baseURL)DatadogInternal.xcframework.zip", checksum: "420402daf2af08af635f3d76c825797d086321adc27ad8e7434840c9d95ae138"),
        .binaryTarget(name: "DatadogLogs", url: "\(baseURL)DatadogLogs.xcframework.zip", checksum: "d48029207afeef6d2142efcd56eb9fc0091912480d1955772b688f12bf019bd6"),
        .binaryTarget(name: "DatadogRUM", url: "\(baseURL)DatadogRUM.xcframework.zip", checksum: "fb35e2e0847760a421ce8201cf15cfbc14a9d6cd270eaa10e9bf05c74fc49950"),
        .binaryTarget(name: "DatadogTrace", url: "\(baseURL)DatadogTrace.xcframework.zip", checksum: "351a669c38e1dbcbae4688844e8989ee08f4f96194ef0f4c941b450a417d4e14"),
        .binaryTarget(name: "DatadogCrashReporting", url: "\(baseURL)DatadogCrashReporting.xcframework.zip", checksum: "e9560150d862f1cf80f18d5ece093c5300fb91541b108936af75cfed4644c344"),
        .binaryTarget(name: "CrashReporter", url: "\(baseURL)CrashReporter.xcframework.zip", checksum: "d3543a81c5c20da1dc716309320e339bc884b222c47d391d7f333f674ab73861"),
        .binaryTarget(name: "OpenTelemetryApi", url: "\(baseURL)OpenTelemetryApi.xcframework.zip", checksum: "ebac9d5271a2911891652011c6c6427328d5cb36b4bc87ddae30c1bbee467fd2"),
    ]
)
