//
//  TourTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/9/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class TourTableViewController: UITableViewController {
    
    var tourList = ["Community Tourism Network LLC", "Tuskegee History Center"]

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
        return tourList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tourism", for: indexPath) as! TourTableViewCell
        
        cell.tourTitle.text = tourList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showTourism") {
            
            let DVC = segue.destination as! TourDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let tourTitle = tourList[indexPath.row] as String
                DVC.sentData1 = tourTitle
            }
        }
        
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
