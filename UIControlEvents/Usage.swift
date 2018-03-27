class MyViewController: UIViewController {
    @IBOutlet var myPreviousTextField: MyTextField!
    @IBOutlet var myTextField: MyTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.addTarget(self, action: #selector(MyViewController.backSpaceDidTap), forControlEvents: .BackSpaceDidPress)
    }
    
    func backSpaceDidTap(textField: MyTextField) {
        if textField == myTextField && !textField.hasText() {
            myPreviousTextField.becomeFirstResponder()
        }
    }
}
