//
//  ViewController.swift
//  FoodTracker
//
//  Created by TJ Oluotch on 28/11/2017.
//  Copyright © 2017 TJ Oluotch. All rights reserved.
//

import UIKit

// view controller is subclass of UIVeiwController
class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,
                                        UINavigationControllerDelegate {
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        // self refers to the view controller class
        nameTextField.delegate = self
        
    }
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField){
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard
        // if the user touches the image view while typing in the text field
        // the keyboard is dismissd properly
        nameTextField.resignFirstResponder()
        
        // UIImageController is an image picker that let's users pick media from their photo
        // library
        let imagePickerController = UIImagePickerController()
        
        // only allow photo's to be picked not taken
        // sets the image picker controller's source aka the place where it gets its images
        // UIImagePickerControllerSourceType, which is an enumeration.
        // This means you can write its value as the abbreviated form .photoLibrary instead of
        // UIImagePickerControllerSourceType.photoLibrary.
        // Recall that you can use the abbreviated form anytime the enumeration value’s type is already known.
        imagePickerController.sourceType = .photoLibrary
        
        // make sure the view controller is notified when the user picks an image
        imagePickerController.delegate = self
        
        // method beign called on ViewController
        // method asks view controller to present view controller defined by imagePickerController
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
    mealNameLabel.text = "Default Text"
    }
}

