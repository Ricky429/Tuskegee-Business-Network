//
//  CompTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/4/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class CompTableViewController: UITableViewController {
    
    var compList = ["Tuskegee Computer Repair"]

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return compList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Computer", for: indexPath) as! CompTableViewCell
        
        cell.compTitle.text = compList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showComp") {
            
            let DVC = segue.destination as! CompDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let compTitle = compList[indexPath.row] as String
                DVC.sentData1 = compTitle
            }
        }
        
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
