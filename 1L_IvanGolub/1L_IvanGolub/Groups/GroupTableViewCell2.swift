//
//  GroupTableViewCell2.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 13/01/2019.
//  Copyright © 2019 Ivan Golub. All rights reserved.
//

import UIKit

class GroupTableViewCell2: UITableViewCell {

    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
