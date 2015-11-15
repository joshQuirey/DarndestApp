//
//  CustomCell.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 8/30/15.
//  Copyright (c) 2015 jQuirey. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var birthday: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var buttonView: UIView!
}