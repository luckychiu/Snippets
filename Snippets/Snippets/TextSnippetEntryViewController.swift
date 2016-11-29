//
//  TextSnippetEntryViewController.swift
//  Snippets
//
//  Created by Lucky Chiu on 29/11/2016.
//  Copyright © 2016 ASOKA. All rights reserved.
//

import Foundation
import UIKit

class TextSnippetEntryViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.inputAccessoryView = createKeyboardToolbar()
        textView.becomeFirstResponder()
    }
    
    func createKeyboardToolbar() -> UIView {
        let keyboardToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
        keyboardToolbar.setItems([flexSpace, doneButton], animated: false)
        return keyboardToolbar
    }
    
    func doneButtonPressed() {
        textView.resignFirstResponder()
    }
}

extension TextSnippetEntryViewController: UITextViewDelegate {
    
    func textViewDidEndEditing(_ textView: UITextView) {
        dismiss(animated: true, completion: nil)
    }
}

