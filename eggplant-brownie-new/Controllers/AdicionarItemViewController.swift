//
//  AdicionarItemViewController.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 19/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

protocol AdicionarItemDelegate{
    func adicionarItem(item : Item)
}

class AdicionarItemViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    var delegate : AdicionarItemDelegate?;
    
    init(delegate: AdicionarItemDelegate) {
        super.init(nibName: "AdicionarItemViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
    }
    
    @IBAction func adicionarItem(_ sender: Any) {
        
        guard let nome = nomeTextField.text else { return}
        guard let calorias = caloriasTextField.text,
            let caloriasDouble =  Double(calorias) else { return }
        
        let item = Item(nome: nome, calorias: caloriasDouble)
        
        delegate?.adicionarItem(item: item)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
