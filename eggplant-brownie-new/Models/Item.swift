//
//  Item.swift
//  eggplant-brownie-new
//
//  Created by Felipe Bertanha on 07/05/20.
//  Copyright © 2020 Felipe Bertanha. All rights reserved.
//

import UIKit

class Item : Equatable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.nome == rhs.nome
    }
    
    let nome : String
    let calorias : Double
    
    init(nome: String, calorias : Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
