//
//  RatingControl.swift
//  FoodTracker
//
//  Created by TJ Oluotch on 06/12/2017.
//  Copyright © 2017 TJ Oluotch. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    //list of buttons
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: Button Action
    @objc func ratingButtonTaped(button: UIButton) {
        print("Button pressed 👍🏾")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        
        for _ in 0..<5 {
        // create the button
        let button = UIButton()
        button.backgroundColor = UIColor.orange
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        // define button as fixed size 44 by 44 point object
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTaped(button:)), for: .touchUpInside)
        
        // Add button to the stack
        addArrangedSubview(button)
        
         // Add the new button to the rating button array
         ratingButtons.append(button)
        }
    }

}
