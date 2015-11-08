//
//  DetailViewController.swift
//  tablecontroller
//
//  Created by paolo leo on 04/11/15.
//  Copyright © 2015 paolo leo. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    
    var item : Item = Item(text:"");
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text=item.text
    }

}