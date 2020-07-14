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
    
    let homeCollectionViewLayout = HomeCollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeCollectionView.setCollectionViewLayout(homeCollectionViewLayout.createLayout(), animated: true)
        homeCollectionView.delegate = homeCollectionViewLayout
        homeCollectionView.dataSource = homeCollectionViewLayout
    }
    
    @IBAction func changeLocationButtonTapped(_ sender: UIButton) {
        print("Change Location")
    }
    
    @IBAction func searchButtonTapped(_ sender: UIBarButtonItem) {
        print("Search")
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIBarButtonItem) {
        print("Navigate to Favorites")
    }
}
