//
//  TypeOfActivityCellTableViewCell.swift
//  PortoSudeste
//
//  Created by Gabriel Vinagre on 09/08/18.
//  Copyright © 2018 gabrielVinagre. All rights reserved.
//

import UIKit

class TypeOfActivityCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
