//
//  ViewController.swift
//  Fit Lyfe
//
//  Created by Alexis Orellano on 2/1/19.
//  Copyright © 2019 Alexis Orellano. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    let headerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
        setupHeader()
    }
    
    func setupBackground(){
        backgroundImage.image = UIImage(named: "backgroundImage")
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.contentMode = .scaleAspectFill
        
        view.addSubview(backgroundImage)
        
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
    
    func setupHeader(){
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .black
        headerView.alpha = 0.75
        headerView.layer.cornerRadius = 20
        headerView.layer.masksToBounds = true
        
        view.addSubview(headerView)
        
        headerView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: -15).isActive = true
        headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }


}

