//
//  DefaultCollectionViewCell.swift
//  HomeFlex
//
//  Created by Osmar Hernández on 13/07/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class DefaultCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeImageView.layer.cornerRadius = 10
    }
}
