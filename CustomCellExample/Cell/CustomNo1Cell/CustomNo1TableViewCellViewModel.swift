//
//  CustomNo1TableViewCellViewModel.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

class CustomNo1TableViewCellViewModel: NSObject, ListViewCellModel {    

    var titleName: String!
    var cellType: ListViewCustomCellType
    
    /// initializer
    ///
    /// - Parameters:
    ///   - titleName: タイトル文字列
    ///   - cellType: セルタイプ
    init(titleName: String!, cellType: ListViewCustomCellType!) {
        self.titleName = titleName
        self.cellType = cellType
    }
}
