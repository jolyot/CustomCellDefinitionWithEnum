//
//  CustomNo3TableViewCellViewModel.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class CustomNo3TableViewCellViewModel: NSObject, ListViewCellModel {
    var uperTitleName: String!
    var middleTitleName: String!
    var bottomitleName: String!
    var cellType: ListViewCustomCellType
    
    /// initializer
    ///
    /// - Parameters:
    ///   - titleName: タイトル文字列
    ///   - cellType: セルタイプ
    init(uperTitleName: String!, middleTitleName: String!, bottomTitleName: String!, cellType: ListViewCustomCellType!) {
        self.uperTitleName = uperTitleName
        self.middleTitleName = middleTitleName
        self.bottomitleName = bottomTitleName
        self.cellType = cellType
    }
}
