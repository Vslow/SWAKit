/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** Vasiliy Kharitonov
 ** 2016-04-22
 **/

// version 0.1

public class WebObject {
    let id: String
    
    public func makeHTML() -> String {
        return "Use web objects to get something usefull"
    }
    
    public init(id: String) {
        self.id = id
    }
}