//
//  CartTableViewController.swift
//  GoodAsOldPhones
//
//  Created by SEAN HAUGHEY on 12/30/15.
//  Copyright © 2015 SEAN HAUGHEY. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    var ordersInCart: [Order]?

    override func viewDidLoad() {
        super.viewDidLoad()

     }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let product = Product()
        product.name = "1907 Wall Set"
        product.productImage = "phone-fullscreen1"
        product.cellImage = "image-cell1"
        product.price = 59.99
        
        let order = Order()
        order.product = product
        
        ordersInCart = [order]
        
    }

     // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return ordersInCart?.count ?? 0
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CartCell", forIndexPath: indexPath)
        
        let order = ordersInCart?[indexPath.row]
        
        if let order = order {
            cell.textLabel?.text = order.product?.name
            cell.detailTextLabel?.text = String(order.product?.price)
        }

        return cell
    }



    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            ordersInCart?.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

}
