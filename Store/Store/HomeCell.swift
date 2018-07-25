//
//  HomeCell.swift
//  Store
//
//  Created by Mazharul Belal on 16/7/18.
//  Copyright © 2018 Mazharul Belal. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    
    @IBOutlet weak var ProductImageView: UIImageView!
    @IBOutlet weak var NameLabel1: UILabel!
    @IBOutlet weak var ProductQuantityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
