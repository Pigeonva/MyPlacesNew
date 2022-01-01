//
//  RatingControl.swift
//  MyPlaces
//
//  Created by Артур Фомин on 01.01.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: properties
    
    private var raitingButtons = [UIButton]()
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    var raiting = 0

    //MARK: initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Button Actions
    
    @objc func ratingButtonTapped(button: UIButton){
        
        print("Button pressed!!!")
        
    }
    
    //MARK: private methods
    
    private func setupButtons() {
        
        for button in raitingButtons {
            
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        raitingButtons.removeAll()
        
        for _ in 1...starCount {
            
            // Create the button
            let button = UIButton()
            button.backgroundColor = .red
            
            //Add constrains
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //Setup the button action
            button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add the button to the stack
            addArrangedSubview(button)
            
            //Add the new button on the raiting button array
            raitingButtons.append(button)
            
        }
    }
}
