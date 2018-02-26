//
//  OrgDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/8/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class OrgDetailViewController: UIViewController {
    
    @IBOutlet weak var orgMap: MKMapView!
    @IBOutlet weak var orgTitle: UILabel!
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
        
        orgTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if orgTitle.text == "Macon County Economic Development Authority" {
            
            websiteLbl.text = "www.madeinmacon.com/"
            facebookLbl.text = "www.facebook.com/Macon-County-Economic-Development-Authority-416029188449777/"
            numberLbl.text = "(334) 725-8496"
            latitude = 32.426663
            longitude = -85.695894
            
        }
        if orgTitle.text == "Tuskegee Area Chamber of Commerce" {
            
            websiteLbl.text = "www.tuskegeeareachamber.org/"
            facebookLbl.text = "www.facebook.com/TuskegeeAreaChamber/"
            numberLbl.text = "(334) 727-6619"
            latitude = 32.433783
            longitude = -85.690325
            
        }
        if orgTitle.text == "Tuskegee-Macon County Community Development Corp." {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "www.facebook.com/pg/Tusk-Mac-CDC-272813466070147/posts/?ref=page_internal"
            numberLbl.text = "(334) 725-8496"
            latitude = 32.426663
            longitude = -85.695894
            
        }
        if orgTitle.text == "Tuskegee Macon County Community Foundation" {
            
            websiteLbl.text = "www.tmccf.org/"
            facebookLbl.text = "www.facebook.com/TMCCFInc/"
            numberLbl.text = "(334) 439-0202"
            latitude = 32.433783
            longitude = -85.691043
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        orgMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = orgTitle.text
        self.orgMap.addAnnotation(objectAnn)
        
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
