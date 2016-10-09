//
//  ViewController.swift
//  firstApp
//
//  Created by Ezequiel Barreto on 08/10/16.
//  Copyright © 2016 blue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //handle the text field´s user input through delegate callbacks
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        //set the text from textfield to label whe click intro button in keyboard
        if ((mealNameLabel.text?.isEmpty) == nil) {
            mealNameLabel.text = textField.text
            print("no esta vacio el textfield")
        }
        else{
            mealNameLabel.text = "Debes ingresar un nombre"
            print("esta vacio " + String(mealNameLabel.text?.isEmpty))
        }
        
    }

    
    //MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}

