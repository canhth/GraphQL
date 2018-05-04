//
//  TransactionsViewController.swift
//  GraphQL-TrueMoney
//
//  Created by Tran Hoang Canh on 3/5/18.
//  Copyright © 2018 Tran Hoang Canh. All rights reserved.
//

import UIKit
import Apollo

class TransactionsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    var allTransactionWatcher: GraphQLQueryWatcher<AllTransactionQuery>?
    
    var transactions: [TransactionDetails] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Transactions"
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        allTransactionWatcher = apollo.watch(query: AllTransactionQuery(), resultHandler: { [weak self] (results, error) in
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            guard let transactions = results?.data?.transactionsList else { return }
            self?.transactions = transactions.map { ($0?.fragments.transactionDetails)! }
        })
    }
 
 
}


extension TransactionsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionCell
        cell.transactionModel = transactions[indexPath.row]
        
        return cell
    }
}
