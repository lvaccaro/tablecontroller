//
//  PostCell.swift
//  Ratings
//
//  Created by luca on 24/10/15.
//  Copyright © 2015 Ray Wenderlich. All rights reserved.
//


import UIKit

class ItemViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    var item: Item! {
        didSet {
            label.text=item.text
        }
    }
    
    
}
