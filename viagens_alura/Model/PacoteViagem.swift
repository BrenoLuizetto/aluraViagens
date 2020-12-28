//
//  PacoteViagem.swift
//  viagens_alura
//
//  Created by Breno Luizetto Cintra on 28/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class PacoteViagem: NSObject {
    
    let nomeDoHotel: String
    let descricao: String
    let dataViagem: String
    let viagem:Viagem
    
     init(nomeDoHotel: String, descricao: String, dataViagem: String, viagem:Viagem) {
        self.nomeDoHotel = nomeDoHotel
        self.descricao = descricao
        self.dataViagem = dataViagem
        self.viagem = viagem
    }
}
