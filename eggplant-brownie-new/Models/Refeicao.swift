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
    let itens : [Item]
    
    init(nome: String, felicidade: Int, itens : [Item]) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    func total() -> Double {
        var total : Double = 0
        for item in itens {
            total += item.calorias
        }
        
        return total
    }

}
