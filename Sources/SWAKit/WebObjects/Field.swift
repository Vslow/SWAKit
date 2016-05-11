/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** Vasiliy Kharitonov
 ** 2016-04-22
 **/

public class Field: WebObject {
    var label: String
    var value: String
    var placeholder: String?
    
    public init(id: String, label: String, value: String, placeholder: String?) {
        self.label = label
        self.value = value
        self.placeholder = placeholder
        
        super.init(id: id)
    }
}