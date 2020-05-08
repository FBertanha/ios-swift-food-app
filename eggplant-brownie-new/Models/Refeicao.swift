//
//  Refeicao.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 07/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

class Refeicao {
    
    let nome : String
    let felicidade: Int
    var itens : [Item] = []
    
    init(nome: String, felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func addRefeicao(item : Item) {
        itens.append(item)
    }

}
