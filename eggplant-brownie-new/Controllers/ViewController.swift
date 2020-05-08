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
    var nomeTextField : UITextField?
    @IBOutlet
    var felicidadeTextField: UITextField?
    
    @IBAction
    func addMeal() {
        guard let nome : String = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeString : String = felicidadeTextField?.text,
            let felicidade : Int = Int(felicidadeString) else {
            return
        }
        
        let r1 = Refeicao(nome: nome, felicidade: felicidade)
        
        print(r1.nome)
        print(r1.felicidade)
        
        
    }


}

