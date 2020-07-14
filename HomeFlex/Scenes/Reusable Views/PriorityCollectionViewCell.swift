//
//  PriorityCollectionViewCell.swift
//  HomeFlex
//
//  Created by Osmar Hernández on 13/07/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class PriorityCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeImageView.layer.cornerRadius = 10
        homeImageView.layer.masksToBounds = true
    }
}
