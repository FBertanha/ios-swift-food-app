//
//  RefeicoesTableViewController.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 15/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

class RefeicoesTableViewController : UITableViewController, AdicionaRefeicaoDelegate {
    
    var refeicoes = [
        Refeicao(nome: "Macarrão", felicidade: 4),
        Refeicao(nome: "Arroz com refeijão", felicidade: 5),
        Refeicao(nome: "Pizza", felicidade: 5)
    ]
    
    override func viewDidLoad() {
        print("here")
    }
    
    func add(_ refeicao: Refeicao) {
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController : ViewController = segue.destination as? ViewController else {
            return
        }
        
        viewController.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
}
