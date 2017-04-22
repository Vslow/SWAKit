/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-05-17
 **/

//UI CSS
let uiKitCSS = [ "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.21/css/uikit.min.css" ]

//UI JavaScript
let uiKitJS = [ "https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js",
                "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.21/js/uikit.min.js",
                "https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.21/js/uikit-icons.min.js" ]

//Creation of UIKit User Interface
public var UIKit = SWAUserInterface(cssUrls: uiKitCSS, javascriptUrls: uiKitJS)


public func makeHTMLUIkit(webObject: WebObject) -> String {
    var html = ""
    
    html = "Not yet ready"
    /** if webObject = Button {
        if webObject.action.actionType == ActionType.httpTransition {
            html = "<a href='\(webObject.action.actionBody)' class='uk-button'>" +
                self.text +
            "</a>"
        }
    **/

    return html
}
