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
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = productName
        productImageView.image = UIImage(named: "phone-fullscreen3")

        // Do any additional setup after loading the view.
    }

  
    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        print("Button tapped")
    }
}
