//
//  ListViewController.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var itemList: [Result]?
    var order: OrderDetails?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
        let item = itemList?[indexPath.row]
        cell.orderId.text = item?.soNo
        cell.orderDate.text = item?.orderDate
        
        // cell.orderImage.image =
        return cell
    }
    
    
}

extension ListViewController: UITableViewDelegate {
    
}

extension ListViewController {
    func initialSetup() {
        let nib = UINib(nibName: "ListTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ListTableViewCell")
        let items = OrderService()
        items.fetchListScreenItems(topValue: 10) { (error, response) in
            
            if let error = error {
                print(error)
            } else {
                self.order = response
                self.tableView.reloadData()
            }
        }
        
    }
}
