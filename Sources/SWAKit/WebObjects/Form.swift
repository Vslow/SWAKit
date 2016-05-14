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

public class Form: WebObject {
    let type: FormType
    var content = [ WebObject ]()
    
    public override init(id: String) {
        self.type = FormType.standard
        
        super.init(id: id)
    }
}