//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by SEAN HAUGHEY on 12/22/15.
//  Copyright © 2015 SEAN HAUGHEY. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage(named: "phone-fullscreen3")

        // Do any additional setup after loading the view.
    }

  
}
