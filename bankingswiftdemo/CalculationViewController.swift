//
//  CalculationViewController.swift
//  bankingswiftdemo
//
//  Created by Cem Karakurt on 6.02.2020.
//  Copyright © 2020 Cem Karakurt. All rights reserved.
//

import UIKit
import Countly

class CalculationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self;
        tableView.dataSource = self;
    Countly.sharedInstance().recordView("CalculationView")
    }
    
    
    var links: [String] = ["Personal Finance Loan Calculation","Deposit Return Calculation"]
    var identifiers: [String] = ["toPersonalFinanceLoanCalculationView","toDepositReturnCalculationView"]


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = links[indexPath.row]
        return cell
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let identifier : String = identifiers[indexPath.row];
        print(indexPath.row)
           performSegue(withIdentifier: identifier, sender: nil)

    }
    
    


}
