# SWAKit
Server-side Swift web application library

The product is not yet ready to help you with anything.

## How to use

We highly recommend to use SWAKit with [Kitura](https://github.com/IBM-Swift/Kitura).

1. Follow [Kitura installation instructions](https://github.com/IBM-Swift/Kitura#swift-version).
2. Create [Kitura web application project](https://github.com/IBM-Swift/Kitura#developing-kitura-applications).
3. Now we add SWAKit as a dependency for your project (Package.swift):
    
    ```swift
    import PackageDescription

    let package = Package(
    name: "myFirstProject",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 13)
        .Package(url: "https://github.com/Vslow/SWAKit.git", majorVersion: 0, minor: 0)
    ])
    ```
4. Import the SWAKit module in your code (Sources/main.swift):
    
    ```swift
    import Kitura
    import KituraNet
    import KituraSys
    import SWAKit
    ```
5. Start using SWAKit in your application. Example of Sources/main.swift file:

    ```swift
    import Kitura
    import KituraNet
    import KituraSys
    import SWAKit

    let router = Router()

    let myApp = WebApp(title: "Hello World App")
    let testForm = Form(id: "testForm")
    myApp.add(testForm)

    let htmlBody = myApp.makeHTMLBody()

    router.get("/") {
        request, response, next in
            response.status(.OK).send(htmlBody)
            next()
    }

    let server = HTTPServer.listen(port: 8090, delegate: router)
    Server.run()
    ```
6. Compile your application:

    - Mac OS X: `swift build`
    - Linux: `swift build -Xcc -fblocks -Xlinker -rpath -Xlinker .build/debug`

9. Now run your new web application:

    ```bash
    .build/debug/myFirstProject
    ```

10. Open your browser at [http://localhost:8090](http://localhost:8090)

## License

This library is licensed under MIT License. Full license text is available in [LICENSE](LICENSE).