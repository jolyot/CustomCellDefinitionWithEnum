//
//  CustomNo2TableViewCellViewModel.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class CustomNo2TableViewCellViewModel: NSObject, ListViewCellModel {
    var aboveTitleName: String!
    var belowTitleName: String!
    var cellType: ListViewCustomCellType
    
    /// initializer
    ///
    /// - Parameters:
    ///   - titleName: タイトル文字列
    ///   - cellType: セルタイプ
    init(aboveTitleName: String!, belowTitleName: String!, cellType: ListViewCustomCellType!) {
        self.aboveTitleName = aboveTitleName
        self.belowTitleName = belowTitleName
        self.cellType = cellType
    }
}
