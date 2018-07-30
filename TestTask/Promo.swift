//
//  Promo.swift
//  TestTask
//
//  Created by Sergey Ilchenko on 30.07.2018.
//  Copyright © 2018 Sergey Ilchenko. All rights reserved.
//

import UIKit

class Promo {
    
    var image: UIImage!
    var title: String
    var oldPrice: String
    var newPrice: String
    var discount: String
    var tagLine: String
    
    init(image: UIImage!, title: String, tagLine: String, oldPrice: String, newPrice: String, discount: String){
        self.image = image
        self.title = title
        self.oldPrice = oldPrice
        self.newPrice = newPrice
        self.discount = discount
        self.tagLine = tagLine
        
    }
    
    static func createPromos() -> [Promo] {
        return [
            Promo(image: UIImage(named: "lays")!, title: "Акция Lays", tagLine: "Футбол вкуснее с Lays", oldPrice: "40 р", newPrice: "20 р", discount: "-50%"),
            Promo(image: UIImage(named: "lays")!, title: "Акция Lays", tagLine: "Футбол вкуснее с Lays", oldPrice: "30 р", newPrice: "15 р", discount: "-50%")
        ]
    }
    
    
}
