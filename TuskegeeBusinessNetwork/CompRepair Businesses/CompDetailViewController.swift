//
//  CompDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/4/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class CompDetailViewController: UIViewController {
    
    @IBOutlet weak var compMap: MKMapView!
    @IBOutlet weak var compTitle: UILabel!
    @IBOutlet weak var websiteLbl: UILabel!
    @IBOutlet weak var facebookLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    var sentData1: String!
    var latitude = 0.0
    var longitude = 0.0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.navigationItem.hidesBackButton = true
        
        compTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if compTitle.text == "Tuskegee Computer Repair" {
            
            websiteLbl.text = "www.tuskegeecomputerrepair.com/"
            facebookLbl.text = "www.facebook.com/TuskegeeComputerRepair/"
            numberLbl.text = "(334) 727-3233"
            latitude = 32.423957
            longitude = -85.691695
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        compMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = compTitle.text
        self.compMap.addAnnotation(objectAnn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func directions(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!)
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
