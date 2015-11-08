//
//  Post.swift
//  Ratings
//
//  Created by luca on 24/10/15.
//  Copyright © 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

struct Item  {
    var text: String?
    
    
    static func create(text: String) -> Item {
        return Item(text: text)
    }
}
