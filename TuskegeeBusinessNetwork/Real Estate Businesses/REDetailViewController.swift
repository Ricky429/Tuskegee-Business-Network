//
//  REDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/9/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class REDetailViewController: UIViewController {
    
    @IBOutlet weak var reMap: MKMapView!
    @IBOutlet weak var reTitle: UILabel!
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
        
        reTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if reTitle.text == "Cloud Realty Property Management" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "www.facebook.com/Cloud-Realty-Property-Management-485619918235879/?rf=203010696705691"
            numberLbl.text = "(334) 725-8496"
            latitude = 32.426663
            longitude = -85.695894
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        reMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = reTitle.text
        self.reMap.addAnnotation(objectAnn)
        
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
