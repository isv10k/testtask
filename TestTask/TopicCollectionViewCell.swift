//
//  TopicCollectionViewCell.swift
//  TestTask
//
//  Created by Sergey Ilchenko on 30.07.2018.
//  Copyright © 2018 Sergey Ilchenko. All rights reserved.
//

import UIKit

class TopicCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Public API
    var topic: Topic! {
        didSet{
            updateUI()
        }
    }
    
    //MARK: - Private
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var topicTitleLable: UILabel!
    @IBOutlet weak var descLable: UILabel!
    
    private func updateUI(){
        topicTitleLable?.text! = topic.title
        descLable?.text! = topic.description
        featuredImage?.image! = topic.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        //self.layer.shadow
    }
    
    
}
