/**
 ** SWAKit
 ** Server-side Swift web application library
 **
 ** © Vasiliy Kharitonov, MIT license
 ** 2016-04-22
 **/

public enum ActionType {
    case submit
    case jsAction
    case httpTransition
    case ajax
}

open class Action {
    let name: String
    let actionType: ActionType
    let actionBody: String
    
    public init(name: String, actionType: ActionType, actionBody: String) {
        self.name = name
        self.actionType = actionType
        self.actionBody = actionBody
    }
}
