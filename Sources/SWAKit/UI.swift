/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2017-04-22
 **/

open class SWAUserInterface {
    
    var topStructure: String
    var botStructure: String
    
    init(cssUrls: [String]?, javascriptUrls: [String]?) {
        
        //Creation of CSS structure
        var cssStructure = ""
        if let css = cssUrls {
            for cssLine in css {
                cssStructure += "<link rel='stylesheet' href='" + cssLine + "' />\n"
            }
        }
        
        //Creation of JavaScript structure
        var jsStructure = ""
        if let javascript = javascriptUrls {
            for jsLine in javascript {
                jsStructure += "<script src='" + jsLine + "'></script>\n"
            }
        }
        
        //Creation of HTML for the top of the document
        topStructure = "<!DOCTYPE html>" +
            "<html>" +
            "<head>" +
            "<meta charset='utf-8'>" +
            "<title>" +
            currentPageTitle +
            "</title>" +
            cssStructure +
            jsStructure +
            "</head>" +
            "<body>"
        
        //Creaction of HTML for the bottom of the document
        botStructure = "</body>" +
        "</html>"
    }
    
}
