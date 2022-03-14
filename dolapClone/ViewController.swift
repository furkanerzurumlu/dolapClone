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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setIcon()
        //setupButton(buton: sizeButton)
        //setupButton(buton: xbtn)
        //setupButton(buton: zbtn)
        
        upView.layer.borderWidth = 0.3
        upView.layer.borderColor = UIColor.lightGray.cgColor
        
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



