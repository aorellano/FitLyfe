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
            cardDescription.text = homePageCard?.cardDescription
            
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
        cardBackgroundSetup()
        cardTitleSetup()
        cardDescriptionSetup()

    }
    
    func cardBackgroundSetup(){
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
    
    func cardTitleSetup(){
        cardTitle.numberOfLines = 0
        cardTitle.lineBreakMode = .byWordWrapping
        cardTitle.text = "LIVE\n\nYOUR\n\nLIFE\n\nEPICALLY\nDedicate yourself to doing well for others.\nBe a HERO whether it's the smallest gesture or the biggest adventure."
        cardTitle.textColor = .black
        cardTitle.font = UIFont.systemFont(ofSize: 30.0, weight: UIFont.Weight.thin)
        cardTitle.textAlignment = .center
        cardTitle.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(cardTitle)
        
        cardTitle.centerXAnchor.constraint(equalTo: cardImage.centerXAnchor).isActive = true
        cardTitle.topAnchor.constraint(equalTo: cardImage.topAnchor, constant: 100).isActive = true
        cardTitle.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor, constant: 20).isActive = true
        cardTitle.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor, constant: -20).isActive = true
    }
    
    func cardDescriptionSetup(){
        cardDescription.numberOfLines = 0
        cardDescription.lineBreakMode = .byWordWrapping
        cardDescription.text = "Dedicate yourself to doing well for others.\nBe a HERO whether it's the smallest gesture or the biggest adventure."
        cardDescription.textColor = .black
        cardDescription.font = UIFont.systemFont(ofSize: 15.0, weight: UIFont.Weight.thin)
        cardDescription.textAlignment = .center
        cardDescription.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(cardDescription)
        
        cardDescription.topAnchor.constraint(equalTo: cardTitle.bottomAnchor, constant: 30).isActive = true
        cardDescription.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor, constant: 20).isActive = true
        cardDescription.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor, constant: -20).isActive = true
        
    }
    

    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
