//
//  TransactionCell.swift
//  GraphQL-TrueMoney
//
//  Created by Tran Hoang Canh on 3/5/18.
//  Copyright © 2018 Tran Hoang Canh. All rights reserved.
//

import UIKit

class TransactionCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    var transactionModel: TransactionDetails! {
        didSet {
            userLabel.text = "User: \(transactionModel.user?.name ?? "")"
            statusLabel.text = "Status: \(transactionModel.status ?? "")"
            amountLabel.text = "Amount: \(transactionModel.amount ?? "")"
        }
    }
    
}
