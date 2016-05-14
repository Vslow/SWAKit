# SWAKit
Server-side Swift web application library

The product is not yet ready to help you with anything.

## Table of contents

- [How to use with Kitura locally](#how-to-use-with-kitura-locally)
- [How to use in IBM Bluemix](#how-to-use-in-ibm-bluemix)
- [Copyright and License](#copyright-and-license)

## How to use with Kitura locally

Locally We highly recommend using SWAKit with [Kitura](https://github.com/IBM-Swift/Kitura).

1. Follow [Kitura installation instructions](https://github.com/IBM-Swift/Kitura#swift-version).

2. Create [Kitura web application project](https://github.com/IBM-Swift/Kitura#developing-kitura-applications).

3. Now we add SWAKit as a dependency for your project (Package.swift):
    
    ```swift
    import PackageDescription

    let package = Package(
    name: "myFirstProject",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 13),
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

## How to use in IBM Bluemix

You can use this framework in IBM Bluemix CF Swift app.

1. Create [IBM Bluemix](https://console.ng.bluemix.net/registration/) account (if you aren't already).

2. Install the [IBM® Bluemix®](http://clis.ng.bluemix.net/ui/home.html) and [Cloud Foundry command line](https://github.com/cloudfoundry/cli/releases) interfaces.

3. In CLI connect to IBM® Bluemix® `bluemix api https://api.eu-gb.bluemix.net`.

4. Log in to Bluemix `bluemix login -u mail@mail.com -o username -s space_name`.

5. Clone swift-hellowworld develop branch. On Linux/OS X `git clone -b develop https://github.com/IBM-Bluemix/swift-helloworld.git`.

6. Edit `Package.swift` file: add `.Package(url: "https://github.com/Vslow/SWAKit.git", majorVersion: 0, minor: 0)` to dependencies. Your `Package.swift` should look like:

    ``` swift
    import PackageDescription

    let package = Package(
        name: "HelloWorldSwift",
        targets: [
        Target(name: "Utils", dependencies: []),
        Target(name: "Server", dependencies: [.Target(name: "Utils")])
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Swift-cfenv.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/Vslow/SWAKit.git", majorVersion: 0, minor: 0)
    ],
    testDependencies: []
    )
    ```

7. Push Swift HelloWorld application to Bluemix, please use the following command

    `cf push -b https://github.com/IBM-Swift/swift-buildpack.git`.

8. Check, that your app is working. SWAKit should be working.

## Copyright and License

Copyright Vasiliy Kharitonov under the [MIT license](LICENSE).
