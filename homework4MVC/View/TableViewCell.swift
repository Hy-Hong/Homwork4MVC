//
//  TableViewCell.swift
//  homework4MVC
//
//  Created by Hy Horng on 9/22/20.
//  Copyright © 2020 Hy Horng. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var txtLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
