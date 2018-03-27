struct MyTextFieldEvents: OptionSetType {
    let rawValue: UInt
    static let BackSpaceDidPress = MyTextFieldEvents(rawValue: 1 << 24)
}

class MyTextField: UITextField {

    func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: MyTextFieldEvents) {
        super.addTarget(target, action: action, forControlEvents: UIControlEvents(rawValue: controlEvents.rawValue))
    }

    override func deleteBackward() {
        sendActionsForControlEvents(UIControlEvents(rawValue: MyTextFieldEvents.BackSpaceDidPress.rawValue))
        super.deleteBackward()
    }
}
