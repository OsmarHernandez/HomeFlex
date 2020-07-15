//
//  NotificationView.swift
//  HomeFlex
//
//  Created by Osmar Hernández on 14/07/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

enum NotifcationType {
    case favorite
    
    var message: String {
        switch self {
        case .favorite:
            return "Added to favorite"
        }
    }
    
    var action: String {
        return "Open favorite"
    }
    
    var color: UIColor {
        switch self {
        case .favorite:
            return #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        }
    }
}

class NotificationView: UIView {
    
    var type: NotifcationType
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "checkmark.square")
        imageView.backgroundColor = self.type.color
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.text = self.type.message
        label.textAlignment = .left
        label.font = UIFont(name: "ProximaNovaA-Regular", size: 18)
        label.textColor = .white
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [self.imageView, self.messageLabel])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 8
        stackView.contentMode = .scaleToFill
        return stackView
    }()
    
    init(frame: CGRect, type: NotifcationType) {
        self.type = type
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: frame.width - 32, height: 60)
    }

    private func setup() {
        self.backgroundColor = type.color
        
        self.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.layer.cornerRadius = 10
        self.alpha = 0
    }
}
