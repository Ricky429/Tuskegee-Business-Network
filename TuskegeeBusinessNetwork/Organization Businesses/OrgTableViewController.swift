//
//  OrgTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/8/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class OrgTableViewController: UITableViewController {
    
    var orgList = ["Macon County Economic Development Authority", "Tuskegee Area Chamber of Commerce", "Tuskegee-Macon County Community Development Corp.", "Tuskegee Macon County Community Foundation"]

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
        return orgList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Organization", for: indexPath) as! OrgTableViewCell
        
        cell.orgTitle.text = orgList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showOrg") {
            
            let DVC = segue.destination as! OrgDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let orgTitle = orgList[indexPath.row] as String
                DVC.sentData1 = orgTitle
            }
        }
        
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
