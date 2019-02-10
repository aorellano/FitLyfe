//
//  HomePageVC.swift
//  Fit Lyfe
//
//  Created by Alexis Orellano on 2/8/19.
//  Copyright © 2019 Alexis Orellano. All rights reserved.
//

import UIKit

class HomePageVC: BaseViewController {
    
    let headerTitle = UILabel()
    let cellId = "Use a constant";
    
    var homePageCards: [HomePageCard] = {
        let aboutUs = HomePageCard()
        aboutUs.cardImage = "card1"
        //aboutUs.cardTitle = "LIVE\n\nYOUR\n\nLIFE\n\nEPICALLY"
        //aboutUs.homePageCardDescription = "Dedicate yourself to doing well for others.\nBe a HERO whether it's the smallest gesture or the biggest adventure."
        let signUp = HomePageCard()
        signUp.cardImage = "card2"
        
        let merch = HomePageCard()
        merch.cardImage = "card3"
        
        let inspiration = HomePageCard()
        inspiration.cardImage = "card4"
        
        let contactUs = HomePageCard()
        contactUs.cardImage = "card5"
        
        return [aboutUs, signUp, merch, inspiration, contactUs]
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        homePageSetup()
    }

    func homePageSetup(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(HomePageCardCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.addSubview(headerTitle)
        view.addSubview(collectionView)
        
        headerTitle.text = "F  I  T\n L.  Y.  F.  E."
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.textColor = .white
        headerTitle.numberOfLines = 3
        headerTitle.textAlignment = .center
        headerTitle.font = UIFont.systemFont(ofSize: 45.0, weight: UIFont.Weight.regular)
        
        
        headerTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        headerTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        collectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
  
    }

}
extension HomePageVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homePageCards.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomePageCardCell
        cell.homePageCard = homePageCards[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1.3, height: collectionView.frame.height/1.11)
    }
}
