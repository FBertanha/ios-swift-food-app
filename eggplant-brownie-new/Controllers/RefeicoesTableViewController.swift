//
//  RefeicoesTableViewController.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 15/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

class RefeicoesTableViewController : UITableViewController {
    
    let refeicoes = [
        Refeicao(nome: "Macarrão", felicidade: 4),
        Refeicao(nome: "Arroz com refeijão", felicidade: 5),
        Refeicao(nome: "Pizza", felicidade: 5)
    ]
    
    override func viewDidLoad() {
        print("here")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        print(refeicao.nome)
        
        return celula
    }
}
