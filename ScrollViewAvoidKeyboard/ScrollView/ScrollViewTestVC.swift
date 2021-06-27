//
//  ScrollViewTestVC.swift
//  ScrollViewAvoidKeyboard
//
//  Created by Tuan Hoang Anh on 14/06/2021.
//

import UIKit

class ScrollViewTestVC: UIViewController {
    @IBOutlet weak var scrollView: UIScrollViewAvoidKeyboard!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.setSpaceBetweenKeyboardAndInputView(50)
        self.title = "Scroll View"
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.black.cgColor
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "Text Field"
    }

}
