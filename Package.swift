// swift-tools-version: 5.10

///
import PackageDescription


///
let package = Package(
    name: "ErrorMessage-package",
    products: [
        
        ///
        .library(
            name: "ErrorMessage-module",
            targets: ["ErrorMessage-module"]
        ),
        
        ///
        .library(
            name: "ErrorMessageTestToolkit",
            targets: ["ErrorMessageTestToolkit"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/XCTestToolkit",
            "0.2.3" ..< "0.3.0"
        ),
    ],
    targets: [
        
        ///
        .target(
            name: "ErrorMessage-module",
            dependencies: []
        ),
        
        ///
        .target(
            name: "ErrorMessageTestToolkit",
            dependencies: [
                "ErrorMessage-module",
                "XCTestToolkit",
            ]
        ),
        
        ///
        .testTarget(
            name: "ErrorMessage-module-tests",
            dependencies: [
                "ErrorMessageTestToolkit",
            ]
        ),
        
        ///
        .testTarget(
            name: "ErrorMessageTestToolkit-tests",
            dependencies: [
                "ErrorMessageTestToolkit",
            ]
        ),
    ]
)
