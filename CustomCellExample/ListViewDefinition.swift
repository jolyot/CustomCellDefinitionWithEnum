//
//  ListViewDefinition.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

/// ListViewのカスタムセルのタイプ
///
/// - customNo1: カスタムNo1
/// - customNo2: カスタムNo2
/// - customNo3: カスタムNo3
enum ListViewCustomCellType {
    case customNo1
    case customNo2
    case customNo3
    
    var reuseIdentifier: String {
        switch self {
        case .customNo1:
            return "CustomNo1TableViewCell"
        case .customNo2:
            return "CustomNo2TableViewCell"
        case .customNo3:
            return "CustomNo3TableViewCell"
        }
    }
    
    static func registerReusableCell(for tableView: UITableView) {
        tableView.register(UINib(nibName: String(describing: CustomNo1TableViewCell.self), bundle: nil), forCellReuseIdentifier: ListViewCustomCellType.customNo1.reuseIdentifier)
        tableView.register(UINib(nibName: String(describing: CustomNo2TableViewCell.self), bundle: nil), forCellReuseIdentifier: ListViewCustomCellType.customNo2.reuseIdentifier)
        tableView.register(UINib(nibName: String(describing: CustomNo3TableViewCell.self), bundle: nil), forCellReuseIdentifier: ListViewCustomCellType.customNo3.reuseIdentifier)
    }
    
    static func reusableCell(with tableView: UITableView, viewModel: ListViewCellModel) -> UITableViewCell {
        switch viewModel.cellType {
        case .customNo1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ListViewCustomCellType.customNo1.reuseIdentifier) as? CustomNo1TableViewCell, let cellModel = viewModel as? CustomNo1TableViewCellViewModel else {
                return UITableViewCell()
            }
            cell.viewModel = cellModel
            return cell
        case .customNo2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ListViewCustomCellType.customNo2.reuseIdentifier)as? CustomNo2TableViewCell, let cellModel = viewModel as? CustomNo2TableViewCellViewModel else {
                return UITableViewCell()
            }
            cell.viewModel = cellModel
            return cell
        case .customNo3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ListViewCustomCellType.customNo3.reuseIdentifier) as? CustomNo3TableViewCell, let cellModel = viewModel as? CustomNo3TableViewCellViewModel else {
                return UITableViewCell()
            }
            cell.viewModel = cellModel
            return cell
        }
    }
}

protocol ListViewCellModel {
    var cellType: ListViewCustomCellType {get}
}

