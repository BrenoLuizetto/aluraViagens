//
//  TableViewCell.swift
//  viagens_alura
//
//  Created by Breno Luizetto Cintra on 23/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    @IBOutlet weak var imagemViagem: UIImageView!
    
    
    func configuraCelula(viagem: Viagem){
        labelTitulo?.text = viagem.titulo
        labelQuantidadeDeDias?.text = viagem.quantidadeDeDias == 1 ? "1 dia" : "\(viagem.quantidadeDeDias) dias"
        labelPreco?.text = "R$\(viagem.preco)"
        imagemViagem.image = UIImage(named: viagem.caminhoDaImagem)
        
        imagemViagem.layer.cornerRadius = 10
        imagemViagem.layer.masksToBounds = true
    }

}
