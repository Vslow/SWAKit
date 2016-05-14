/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-22
 **/

public enum FormType {
    case standard
}

public class Block: WebObject {
    let type: FormType
    public var content = [ WebObject ]()
    public var title = ""
    public var icon = ""
    
    public override init(id: String) {
        self.type = FormType.standard
        
        super.init(id: id)
    }
}