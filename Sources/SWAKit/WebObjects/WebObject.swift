/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-22
 **/

// version 0.1

open class WebObject {
    open let id: String
    
    open func makeHTML() -> String {
        return "Use web objects to get something usefull"
    }
    
    public init(id: String) {
        self.id = id
    }
}
