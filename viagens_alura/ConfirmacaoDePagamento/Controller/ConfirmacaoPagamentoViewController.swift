//
//  ConfirmacaoPagamentoViewController.swift
//  viagens_alura
//
//  Created by Breno Luizetto Cintra on 28/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class ConfirmacaoPagamentoViewController: UIViewController {

    @IBOutlet weak var ImagemPacoteViagem: UIImageView!
    @IBOutlet weak var labelTituloPacoteViagem: UILabel!
    @IBOutlet weak var labelHotelPacoteViagem: UILabel!
    @IBOutlet weak var labelDataPacoteViagem: UILabel!
    @IBOutlet weak var labelQuantidadePessoas: UILabel!
    @IBOutlet weak var labelDescricaoPacoteViagem: UILabel!
    
    @IBOutlet weak var botaoVoltarHome: UIButton!
    
    var pacoteComprado:PacoteViagem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pacote = pacoteComprado{
            self.ImagemPacoteViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
            self.labelHotelPacoteViagem.text = pacote.nomeDoHotel
            self.labelTituloPacoteViagem.text = pacote.viagem.titulo.uppercased()
            self.labelDataPacoteViagem.text = pacote.dataViagem
            self.labelDescricaoPacoteViagem.text = pacote.descricao
            
            self.ImagemPacoteViagem.layer.cornerRadius = 10
            self.ImagemPacoteViagem.layer.masksToBounds = true
            
            self.botaoVoltarHome.layer.cornerRadius = 8
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func botaoVoltarHome(_ sender: UIButton) {
        if let navigation = self.navigationController{
            navigation.popToRootViewController(animated: true)
        }
    }
}
