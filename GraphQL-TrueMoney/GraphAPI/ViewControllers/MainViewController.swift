//
//  ViewController.swift
//  GraphQL-TrueMoney
//
//  Created by Tran Hoang Canh on 2/5/18.
//  Copyright © 2018 Tran Hoang Canh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var dataResponseTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    fileprivate func getUserInformation() {
        guard let userID = Int(idTextField.text ?? "0") else { return }
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        let userTransactionQuery = UsersAndTransactionsQuery(id: userID)
        apollo.fetch(query: userTransactionQuery) { [weak self] (results, error) in
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            guard let user = results?.data?.user else { return }
            
            var information = ""
            information += "\n Name: \(user.name ?? "nil")"
            information += "\n Balance: \(user.balance ?? 0)"
            information += "\n Transaction count: \(user.transactions?.count ?? 0)"
            
            self?.dataResponseTextView.text = information
            
        }
    }
    
}

extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        getUserInformation()
        return true
    }
}


