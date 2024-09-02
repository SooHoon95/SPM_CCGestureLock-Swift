// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CCGestureLock_SPM",
    platforms: [
        .iOS(.v8) // iOS 8.0 이상 지원
    ],
    products: [
        .library(
            name: "CCGestureLock_SPM",
            targets: ["CCGestureLock_SPM"]),
    ],
    dependencies: [
        // 의존성 라이브러리가 없으므로 이 부분은 비어 있습니다.
    ],
    targets: [
        .target(
            name: "CCGestureLock_SPM",
            path: "Sources", // 소스 파일 경로 설정
            exclude: [], // 제외할 파일이 있다면 이곳에 추가
            resources: [
                // 리소스 파일이 있다면 여기서 추가 가능
                // .process("Assets/*.png")
            ]
        ),
        .testTarget(
            name: "CCGestureLock_SPMTests",
            dependencies: ["CCGestureLock_SPM"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
