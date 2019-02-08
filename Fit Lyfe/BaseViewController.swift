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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
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


}

