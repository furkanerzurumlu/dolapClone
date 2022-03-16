//
//  UrunlerCollectionViewCell.swift
//  dolapClone
//
//  Created by Furkan Erzurumlu on 15.03.2022.
//

import UIKit

protocol HucreProtocol{
    func detay(indexPath:IndexPath)
}

class UrunlerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var urunlerImageView: UIImageView!
    @IBOutlet weak var urunlerName: UILabel!
    @IBOutlet weak var urunlerPrice: UILabel!
    
    
}
