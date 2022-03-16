//
//  DetayVC.swift
//  dolapClone
//
//  Created by Furkan Erzurumlu on 16.03.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var detayImageView: UIImageView!
    @IBOutlet weak var detayNameLabel: UILabel!
    @IBOutlet weak var detayPriceLabel: UILabel!
    
    var urun:Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let u = urun {
            detayImageView.image = UIImage(named: u.Urun_ImageName!)
            detayNameLabel.text = u.Urun_Name
            detayPriceLabel.text = "\(u.Urun_Price!) TL"
        }
    }
    

 

}
