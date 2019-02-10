//
//  HomePageCardCell.swift
//  Fit Lyfe
//
//  Created by Alexis Orellano on 2/8/19.
//  Copyright © 2019 Alexis Orellano. All rights reserved.
//

import Foundation
import UIKit

class HomePageCardCell: UICollectionViewCell{
    
    var homePageCard: HomePageCard? {
        didSet{
            cardImage.image = UIImage(named:(homePageCard?.cardImage)!)
            cardTitle.text = homePageCard?.cardTitle
            
        }
    }
    
    let cardImage = UIImageView()
    let cardTitle = UILabel()
    let cardDescription = UILabel()
    let cardButton = UIButton()
    var blurView: UIVisualEffectView = {
        let blurView = UIVisualEffectView()
        blurView.effect = UIBlurEffect(style: .regular)
        blurView.layer.cornerRadius = 20
        blurView.layer.masksToBounds = true
        blurView.translatesAutoresizingMaskIntoConstraints = false
        return blurView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardImageSetup()

    }
    
    func cardImageSetup(){
        cardImage.image = UIImage(named: "card1")
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardImage.contentMode = .scaleAspectFill
        cardImage.clipsToBounds = true
        cardImage.layer.cornerRadius = 20
        cardImage.layer.masksToBounds = true
        
        addSubview(cardImage)
        addSubview(blurView)
        
        cardImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        cardImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cardImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        cardImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        
        blurView.topAnchor.constraint(equalTo: cardImage.topAnchor).isActive = true
        blurView.bottomAnchor.constraint(equalTo: cardImage.bottomAnchor).isActive = true
        blurView.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor).isActive = true
        blurView.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor).isActive = true
    }
    

    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
