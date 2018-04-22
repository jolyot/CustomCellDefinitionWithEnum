//
//  ViewController.swift
//  CustomCellExample
//
//  Created by Kazunori Takaishi on 2018/04/22.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    fileprivate let viewModel = ListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        ListViewCustomCellType.registerReusableCell(for: tableView)
        viewModel.initialize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellModels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ListViewCustomCellType.reusableCell(with: tableView, viewModel: viewModel.cellModels[indexPath.row])
    }
}

