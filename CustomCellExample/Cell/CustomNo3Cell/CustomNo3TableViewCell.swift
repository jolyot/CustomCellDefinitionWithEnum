//
//  CustomNo3TableViewCell.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class CustomNo3TableViewCell: UITableViewCell {

    @IBOutlet weak var uperTitleLabel: UILabel!
    @IBOutlet weak var middleTitleLabel: UILabel!
    @IBOutlet weak var bottomTitleLabel: UILabel!
    
    var viewModel: CustomNo3TableViewCellViewModel! {
        didSet {
            uperTitleLabel.text = viewModel.uperTitleName
            middleTitleLabel.text = viewModel.middleTitleName
            bottomTitleLabel.text = viewModel.bottomitleName
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
