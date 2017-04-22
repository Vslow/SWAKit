/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-21
 **/

import Foundation

public var currentPageTitle = ""

open class WebApp {
    // Main application class
    let title: String
    var ui: UserInterface
    var content = [ WebObject ]()
    
    open func add(_ webObject: WebObject) {
        self.content.append(webObject)
    }
    
    open func makeHTMLBody() -> String {
        //Makes full HTML5 body

        var responseBody = ""

        responseBody += ui.topStructure
        
        //content part is under development
        responseBody += "<p>Hello, World!</p>"
        
        responseBody += ui.botStructure

        return responseBody
    }
    
    open func makeHTTPResponse() -> String {
        //Makes full HTTP Response ready to send
        
        var httpResponse = ""
        let responseBody = self.makeHTMLBody()
        
        httpResponse += "HTTP/1.0 200 OK\n"
        httpResponse += "Content-Type: text/html\n"
        
        httpResponse += "Content-Length: \(responseBody.characters.count) \n\n"
        httpResponse += responseBody
        
        return httpResponse
    }
    
    public init(title: String, userInterface: UserInterface?) {
        
        //Initializing of user interface
        if let userInterface = userInterface {
            self.ui = userInterface
        } else {
            let simpleUI = UserInterface(cssUrls: nil, javascriptUrls: nil)
            self.ui = simpleUI
        }
        
        self.title = title
    }
}
