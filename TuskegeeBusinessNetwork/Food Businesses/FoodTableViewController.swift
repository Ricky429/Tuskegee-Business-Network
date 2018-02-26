//
//  FoodTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/6/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var foodList = ["American Deli","Burger King", "China Pavilion", "Church's Chicken", "McDonald's", "New China", "Subway", "Tiger Pause Deli"]

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
        return foodList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath) as! FoodTableViewCell
        
        cell.foodTitle.text = foodList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showFood") {
            
            let DVC = segue.destination as! FoodDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let foodTitle = foodList[indexPath.row] as String
                DVC.sentData1 = foodTitle
            }
        }
        
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
