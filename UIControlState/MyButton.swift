class MyButton: UIButton {

    var error: Bool = false {
        didSet {
            setNeedsLayout()
        }
    }

    override var state: UIControlState {
        get {
            return error ? UIControlState(rawValue: super.state.rawValue | UIControlState.Error.rawValue) : super.state
        }
    }
}

private extension UIControlState {
    static let Error = UIControlState(rawValue: 1 << 16)
}
