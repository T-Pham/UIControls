let myButton = MyButton()
myButton.setImage(UIImage(named: "ErrorCross"), forState: .Error)
myButton.setImage(UIImage(named: "ErrorCross"), forState: [.Error, .Highlighted])
myButton.setImage(UIImage(named: "ErrorCross"), forState: [.Error, .Selected])
myButton.setImage(UIImage(named: "ErrorCross"), forState: [.Error, .Selected, .Highlighted])
myButton.error = true
