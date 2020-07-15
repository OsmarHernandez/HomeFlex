//
//  HomeViewController.swift
//  HomeFlex
//
//  Created by Osmar Hernández on 13/07/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var favoriteNotificationView: UIView!
    
    let homeCollectionViewLayout = HomeCollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeCollectionView.setCollectionViewLayout(homeCollectionViewLayout.createLayout(), animated: true)
        homeCollectionView.delegate = homeCollectionViewLayout
        homeCollectionView.dataSource = homeCollectionViewLayout
    }
    
    @IBAction func sortButtonTapped(_ sender: UIBarButtonItem) {
        print("Sort")
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIBarButtonItem) {
        print("Navigate to Favorites")
        
        favoriteNotificationView.center.y -= 20
        
        UIView.animate(withDuration: 0.6, animations: {
            self.favoriteNotificationView.center.y += 20
            self.favoriteNotificationView.alpha = 1
        }, completion: { _ in
            UIView.animate(withDuration: 0.6, delay: 3, options: [], animations: {
                self.favoriteNotificationView.alpha = 0
                self.favoriteNotificationView.center.y += 20
            }, completion: { _ in
                self.favoriteNotificationView.center.y -= 20
            })
        })
    }
}
