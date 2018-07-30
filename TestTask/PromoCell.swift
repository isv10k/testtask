//
//  PromoCell.swift
//  TestTask
//
//  Created by Sergey Ilchenko on 30.07.2018.
//  Copyright © 2018 Sergey Ilchenko. All rights reserved.
//

import UIKit

class PromoCell: UITableViewCell {
    /*
    var promo: Promo! {
        didSet{
            updateUI()
        }
    }*/

    @IBOutlet weak var promoImage: UIImageView!
    @IBOutlet weak var promoOldPrice: UILabel!
    @IBOutlet weak var promoNewPrice: UILabel!
    @IBOutlet weak var promoTagline: UILabel!
    @IBOutlet weak var promoTitle: UILabel!
    
    @IBOutlet weak var promoDiscount: UILabel!
    
    @IBAction func promoToCart(_ sender: Any) {
    }
    /*
    private func updateUI(){
        promoOldPrice?.text = promo.oldPrice
        promoTitle?.text! = promo.title
        promoImage?.image! = promo.image
        promoNewPrice?.text! = promo.newPrice
        promoDiscount?.text! = promo.discount
        promoTagline?.text! = promo.tagLine
    }
 */
    func setPromo(promo: Promo){
        promoOldPrice?.text = promo.oldPrice
        promoTitle?.text! = promo.title
        promoImage?.image! = promo.image
        promoNewPrice?.text! = promo.newPrice
        promoDiscount?.text! = promo.discount
        promoTagline?.text! = promo.tagLine
    }
    
    
}
