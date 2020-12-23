//
//  PacotesViagemViewController.swift
//  viagens_alura
//
//  Created by Breno Luizetto Cintra on 23/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class PacotesViagemViewController: UIViewController, UICollectionViewDataSource {
 
    
    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath)as! PacoteViagemCollectionViewCell
        
        celulaPacote.backgroundColor = UIColor.red
        
        return celulaPacote

    }

}
