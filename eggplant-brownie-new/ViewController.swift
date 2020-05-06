//
//  ViewController.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 05/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet
    var mealNameTextField : UITextField!
    @IBOutlet
    var happinessTextField: UITextField!
    
    @IBAction
    func addMeal() {
        let mealName : String? = mealNameTextField.text
        let happiness : String? = happinessTextField.text
        print("add meal: \(mealName), happiness: \(happiness)")
    }


}

