//
//  FrendTableViewCell.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 26/12/2018.
//  Copyright © 2018 Ivan Golub. All rights reserved.
//

import UIKit

class FrendTableViewCell: UITableViewCell {

    @IBOutlet weak var frendImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
