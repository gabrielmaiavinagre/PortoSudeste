//
//  SpecificToDo.swift
//  PortoSudeste
//
//  Created by Gabriel Maia Vinagre Costa on 09/08/18.
//  Copyright © 2018 gabrielVinagre. All rights reserved.
//

import UIKit

class SpecificToDo: UIViewController, UITextFieldDelegate {

    var toDoTitle = ""
    var jogTitle = ""
    
    @IBOutlet weak var toDoTitleLabel: UILabel!
    
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataTextField.delegate = self
        self.toDoTitleLabel.text = toDoTitle
        self.jobTitleLabel.text = jogTitle
        inputAcessoryKeyBoardView()
       
    }

    func inputAcessoryKeyBoardView() {
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        var doneButton = UIBarButtonItem(title: "OK", style: UIBarButtonItemStyle.done, target: self, action: "dismissKeyBoard")
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        
        dataTextField.delegate = self
        dataTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyBoard() {
        self.dataTextField.resignFirstResponder()
    }

}
