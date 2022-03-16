//
//  ViewController.swift
//  dolapClone
//
//  Created by Furkan Erzurumlu on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var upView: UIStackView!
    @IBOutlet weak var sizeButton: UIButton!
    @IBOutlet weak var cargoButton: UIButton!
    @IBOutlet weak var brandsButton: UIButton!
    @IBOutlet weak var UrunlerCollectionView: UICollectionView!
    
    var UrunlerList = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UrunlerCollectionView.delegate = self
        UrunlerCollectionView.dataSource = self
        
        setIcon()
        setupButton(button: sizeButton)
        setupButton(button: brandsButton)
        setupButton(button: brandsButton)
        
        upView.layer.borderWidth = 0.3
        upView.layer.borderColor = UIColor.lightGray.cgColor
        
        let u1 = Urunler(Urun_ID: 1, Urun_Name: "Armani Exchange", Urun_ImageName: "Tshirt", Urun_Price: 250)
        let u2 = Urunler(Urun_ID: 2, Urun_Name: "Emporio Armani", Urun_ImageName: "Saat", Urun_Price: 1499)
        let u3 = Urunler(Urun_ID: 3, Urun_Name: "Hotiç", Urun_ImageName: "Ayakkabı", Urun_Price: 200)
        let u4 = Urunler(Urun_ID: 4, Urun_Name: "Emporio Armani", Urun_ImageName: "Saat2", Urun_Price: 1500)
        let u5 = Urunler(Urun_ID: 5, Urun_Name: "Pull & Bear", Urun_ImageName: "Çanta", Urun_Price: 100)
        
        UrunlerList.append(u1)
        UrunlerList.append(u2)
        UrunlerList.append(u3)
        UrunlerList.append(u5)
        UrunlerList.append(u4)
        
        let tasarim = UICollectionViewFlowLayout()
        let genislik = UrunlerCollectionView.frame.size.width
        let hucreGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*2)
        UrunlerCollectionView!.collectionViewLayout = tasarim
    }
    func setIcon(){
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo")
        imageView.image = image
        self.navigationItem.titleView = imageView
    }
    
    func setupButton(button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0.3
        button.layer.borderColor = UIColor.lightGray.cgColor
    }
    
}


extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, HucreProtocol{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UrunlerList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = UrunlerList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunlerCollectionViewCell
        
        cell.urunlerImageView.image = UIImage(named: urun.Urun_ImageName!)
        cell.urunlerName.text = urun.Urun_Name
        cell.urunlerPrice.text = "\(urun.Urun_Price!) TL"
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.3
        
        return cell
    }
    
    func detay(indexPath: IndexPath) {
        let _ = UrunlerList[indexPath.row]
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let urun = UrunlerList[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: urun)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            let urun = sender as? Urunler
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.urun = urun
        }
    }
}

