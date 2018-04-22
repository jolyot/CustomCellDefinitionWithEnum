//
//  ListViewModel.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class ListViewModel: NSObject {
    
    var cellModels = [ListViewCellModel]()
    
    func initialize() {
        let customNo1 = CustomNo1TableViewCellViewModel(titleName: "カスタムセル1", cellType: ListViewCustomCellType.customNo1)
        let customNo2 = CustomNo2TableViewCellViewModel(aboveTitleName: "カスタムセル2above", belowTitleName: "カスタムセル2below", cellType: ListViewCustomCellType.customNo2)
        let customNo3 = CustomNo3TableViewCellViewModel(uperTitleName: "カスタムセル3uper", middleTitleName: "カスタムセル3middle", bottomTitleName: "カスタムセル3bottom", cellType: ListViewCustomCellType.customNo3)
        
        cellModels.append(customNo1)
        cellModels.append(customNo2)
        cellModels.append(customNo3)
    }

}
