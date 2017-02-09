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

open class Block: WebObject {
    let type: FormType
    open var content = [ WebObject ]()
    open var title = ""
    open var icon = ""
    
    public override init(id: String) {
        self.type = FormType.standard
        
        super.init(id: id)
    }
}
