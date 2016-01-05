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
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
        

        // Do any additional setup after loading the view.
    }

  
    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        guard let product = product, let name = product.name, let price = product.price else{
            return
        }
        
        // Create an order
        let order = Order()
        order.product = product
        
        var ordersInCart = Orders.readOrdersFromArchive()
        if(ordersInCart == nil) {
            ordersInCart = []
        }
        ordersInCart?.append(order)
        
        if let orders = ordersInCart {
            Orders.saveOrdersToArchive(orders)
        }

        
        
        let alertController = UIAlertController (title: "Added to Cart", message: "You added \(name) to the cart and it costs $\(price)", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction (title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}
