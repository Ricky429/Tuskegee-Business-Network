//
//  RetailTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/9/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class RetailTableViewController: UITableViewController {
    
    var retailList = ["Bargain Corner", "Dollar General", "Family Dollar", "Marilyn's Boutique", "New Beginnings Bridal Formal Wear"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return retailList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Retail", for: indexPath) as! RetailTableViewCell
        
        cell.retailTitle.text = retailList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showRetail") {
            
            let DVC = segue.destination as! RetailDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let retailTitle = retailList[indexPath.row] as String
                DVC.sentData1 = retailTitle
            }
        }
        
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
