//
//  Topic.swift
//  TestTask
//
//  Created by Sergey Ilchenko on 30.07.2018.
//  Copyright © 2018 Sergey Ilchenko. All rights reserved.
//

import UIKit

class Topic {
    
    //MARK: - Public API
    var title = ""
    var description = ""
    var featuredImage: UIImage!
    
    init(title: String, description: String, featuredImage: UIImage!) {
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
    }
    
    //MARK: - Private
    
    static func createTopics() -> [Topic] {
        return [
            Topic(title: "Яблоки", description: "Яблоки - источник здоровья", featuredImage: UIImage(named: "apples")!),
            Topic(title: "Вода", description: "Вода - источник жизни", featuredImage: UIImage(named: "water")!),
            Topic(title: "Ягоды", description: "Ягода - ягоды", featuredImage: UIImage(named: "cherries")!)
        ]
        
    }
    
}
