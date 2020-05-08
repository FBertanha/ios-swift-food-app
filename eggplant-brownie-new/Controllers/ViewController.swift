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
        
        if mealName == nil || happiness == nil || Int(happiness!) == nil {
            print("Meal or Happines is invalid")
            return
        }
        
        let r1 = Refeicao(nome: mealName!, felicidade: Int(happiness!)!,itens: [
            Item(nome: "i1", calorias: 2),
            Item(nome: "i2", calorias: 3),
        ])
        
        let total : Double = r1.total()
        
        print(r1.nome)
        print(total)
        //print("add meal: \(mealName), happiness: \(happiness)")
    }


}

