//
//  ListTableViewCell.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var orderId: UILabel!
    
    @IBOutlet weak var orderDate: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var orderImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
