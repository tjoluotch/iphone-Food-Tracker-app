//
//  ViewController.swift
//  FoodTracker
//
//  Created by TJ Oluotch on 28/11/2017.
//  Copyright © 2017 TJ Oluotch. All rights reserved.
//

import UIKit

// view controller is subclass of UIVeiwController
class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        // self refers to the view controller class
        nameTextField.delegate = self
        
    }

    // MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
    mealNameLabel.text = "Default Text"
    }
}

