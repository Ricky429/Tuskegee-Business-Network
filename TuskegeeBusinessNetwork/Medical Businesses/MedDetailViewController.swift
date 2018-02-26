//
//  MedDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/8/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class MedDetailViewController: UIViewController {
    
    @IBOutlet weak var medMap: MKMapView!
    @IBOutlet weak var medTitle: UILabel!
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
        
        medTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if medTitle.text == "Southern Christian Leadership Foundation" {
            
            websiteLbl.text = "www.sclfoundation.org/"
            facebookLbl.text = "www.facebook.com/SCL-Foundation-Inc-82053233794/"
            numberLbl.text = "(334) 226-3063"
            latitude = 32.422137
            longitude = -85.690771
            
        }
        if medTitle.text == "Tuskegee Medical & Surgical Center" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "www.facebook.com/pages/Tuskegee-Medical-Center/316946258341206?rf=162612507159142"
            numberLbl.text = "(334) 727-7670"
            latitude = 32.430816
            longitude = -85.694373
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        medMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = medTitle.text
        self.medMap.addAnnotation(objectAnn)
        
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
