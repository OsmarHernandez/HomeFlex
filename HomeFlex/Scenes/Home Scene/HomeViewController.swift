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
    
    private lazy var searchBar: UISearchBar = {
        let frame = CGRect(x: 0, y: 0, width: view.bounds.width - 40, height: 44)
        return UISearchBar(frame: frame)
    }()
    
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
    }
}
