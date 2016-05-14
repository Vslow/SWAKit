/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-21
 **/

import Foundation

public class WebApp {
    // Main application class
    let title: String
    var content = [ WebObject ]()
    
    public func add(webObject: WebObject) {
        self.content.append(webObject)
    }
    
    public func makeHTMLBody() -> String {
        //Makes full HTML5 body

        var responseBody = ""

        responseBody += makeHTMLStructureTop(pageTitle: self.title)
        //content part is under development
        responseBody += "<p>Hello, World!</p>"
        responseBody += makeHTMLStructureBottom()

        return responseBody
    }
    
    public func makeHTTPResponse() -> String {
        //Makes full HTTP Response ready to send
        
        var httpResponse = ""
        let responseBody = self.makeHTMLBody()
        
        httpResponse += "HTTP/1.0 200 OK\n"
        httpResponse += "Content-Type: text/html\n"
        
        httpResponse += "Content-Length: \(responseBody.characters.count) \n\n"
        httpResponse += responseBody
        
        return httpResponse
    }
    
    public init(title: String) {
        self.title = title
    }
}

func makeHTMLStructureTop(pageTitle: String) -> String {
    //Makes some basic HTML5 document structure with UIKit
    
    let topStructure = "<!DOCTYPE html>" +
        "<html>" +
        "<head>" +
        "<meta charset='utf-8'>" +
        "<title>" +
        pageTitle +
        "</title>" +
        "</head>" +
        "<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/uikit/2.26.2/css/uikit.almost-flat.min.css'>" +
        "<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>" +
        "<script src='https://cdnjs.cloudflare.com/ajax/libs/uikit/2.26.2/js/uikit.min.js'></script>" +
        "<body>" +
        "<div class='uk-container uk-container-center'>"
    
    
    return topStructure
}

func makeHTMLStructureBottom() -> String {
    //Makes some basic HTML5 document structure
    
    let bottomStructure =   "</div>" +
        "</body>" +
        "</html>"
    
    return bottomStructure
}