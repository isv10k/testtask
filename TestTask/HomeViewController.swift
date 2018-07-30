//
//  HomeViewController.swift
//  TestTask
//
//  Created by Sergey Ilchenko on 26.07.2018.
//  Copyright © 2018 Sergey Ilchenko. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: - IBOutlets
    //@IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - UICollectionViewDataSource
    private var topics = Topic.createTopics()
    private var promos = Promo.createPromos()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private struct Storyboard {
        static let CellIdentifier = "Topic Cell"
        static let CellPromoIdentifier = "Promo Cell"
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.CellIdentifier, for: indexPath) as! TopicCollectionViewCell
        cell.topic = self.topics[indexPath.item]
        return cell
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return promos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let promo = promos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Promo Cell") as! PromoCell
        cell.setPromo(promo: promo)
        //let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.CellPromoIdentifier, for: indexPath) as! PromoCell
        //cell.promo = self.promos[indexPath.item]
        return cell
        
    }
    
    
}
