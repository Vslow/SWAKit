/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-22
 **/

public class Field: WebObject {
    public var label: String
    public var value: String
    public var placeholder: String?
    
    public init(id: String, label: String, value: String, placeholder: String?) {
        self.label = label
        self.value = value
        self.placeholder = placeholder
        
        super.init(id: id)
    }
}