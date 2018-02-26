//
//  OrgTableViewCell.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/8/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class OrgTableViewCell: UITableViewCell {
    
    @IBOutlet weak var orgTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
