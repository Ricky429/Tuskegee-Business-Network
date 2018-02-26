//
//  HotelTableViewCell.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/7/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class HotelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hotelTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
