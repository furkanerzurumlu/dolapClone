//
//  Urunler.swift
//  dolapClone
//
//  Created by Furkan Erzurumlu on 15.03.2022.
//

import Foundation


class Urunler{
    var Urun_ID:Int?
    var Urun_Name:String?
    var Urun_ImageName:String?
    var Urun_Price:Int?
    
    
    init(){
        
    }
    
    init(Urun_ID:Int,Urun_Name:String,Urun_ImageName:String,Urun_Price:Int){
        self.Urun_ID = Urun_ID
        self.Urun_Name = Urun_Name
        self.Urun_ImageName = Urun_ImageName
        self.Urun_Price = Urun_Price
    }
    
    
    
}
