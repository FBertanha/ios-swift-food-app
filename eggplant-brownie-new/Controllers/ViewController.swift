//
//  ViewController.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 05/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao : Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Atributos
    var delegate : AdicionaRefeicaoDelegate?
    var itens : Array<Item> = [
        Item(nome: "Queijo ralado", calorias: 5),
        Item(nome: "Massa de tomate", calorias: 21),
        Item(nome: "Mussarela", calorias: 55),
        Item(nome: "Atum", calorias: 18),
        Item(nome: "Batata palha", calorias: 99)
    ]
    var itensSelecionados : Array<Item> = []
    
    // MARK: - IBOutlets
    @IBOutlet
    var nomeTextField : UITextField?
    @IBOutlet
    var felicidadeTextField: UITextField?
    
    //MARK: - IBActions
    @IBAction
    func adicionar() {
        guard let nome : String = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeString : String = felicidadeTextField?.text,
            let felicidade : Int = Int(felicidadeString) else {
            return
        }
        
        let r1 = Refeicao(nome: nome, felicidade: felicidade, itens: itensSelecionados)
        
        r1.itens = itensSelecionados
        
        print(r1.nome)
        print(r1.felicidade)
        
        delegate?.add(r1)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    // MARK: - TableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula : UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let item : Item = itens[indexPath.row]
        
        celula.textLabel?.text = item.nome
        
        return celula
    }
    
    // MARK: - TableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("linha selecionada \(indexPath.row)")
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        let item : Item = itens[indexPath.row]
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            itensSelecionados.append(item)
        } else {
            celula.accessoryType = .none
            
            if let posicaoItem : Int = itensSelecionados.firstIndex(of: item) {
                itensSelecionados.remove(at: posicaoItem)
            }
            
        }
        
        for item in itensSelecionados {
            print(item.nome)
        }
        
        
    }
}

