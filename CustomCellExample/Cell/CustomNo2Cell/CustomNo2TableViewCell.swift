//
//  CustomN02TableViewCell.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

class CustomNo2TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabelAbove: UILabel!
    @IBOutlet weak var titleLabelBelow: UILabel!
    
    var viewModel: CustomNo2TableViewCellViewModel! {
        didSet {
            titleLabelAbove.text = viewModel.aboveTitleName
            titleLabelBelow.text =  viewModel.belowTitleName
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
