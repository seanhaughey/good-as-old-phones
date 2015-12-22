//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by SEAN HAUGHEY on 12/22/15.
//  Copyright © 2015 SEAN HAUGHEY. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375, 800)
    }

 }
