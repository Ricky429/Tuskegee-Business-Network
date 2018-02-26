//
//  HotelTableViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/7/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit

class HotelTableViewController: UITableViewController {
    
    var hotelList = ["Kellogg Hotel and Conference Center"]

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
        return hotelList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Hotel", for: indexPath) as! HotelTableViewCell
        
        cell.hotelTitle.text = hotelList[indexPath.row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showHotel") {
            
            let DVC = segue.destination as! HotelDetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let hotelTitle = hotelList[indexPath.row] as String
                DVC.sentData1 = hotelTitle
            }
        }
        
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
