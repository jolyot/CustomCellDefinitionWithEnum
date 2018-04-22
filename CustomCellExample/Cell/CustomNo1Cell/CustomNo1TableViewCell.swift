//
//  CustomNo1TableViewCell.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

class CustomNo1TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: CustomNo1TableViewCellViewModel! {
        didSet {
            titleLabel.text = viewModel.titleName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
