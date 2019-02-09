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
    let celId = "Use a constant";

    override func viewDidLoad() {
        super.viewDidLoad()
    
        homePageSetup()
    }

    func homePageSetup(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 340, height: (view.frame.height)/1.3)
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .red
        collectionView.dataSource = self
        
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
extension HomePageVC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        return cell
    }
}
