//
//  RetailDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/9/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class RetailDetailViewController: UIViewController {
    
    @IBOutlet weak var retailMap: MKMapView!
    @IBOutlet weak var retailTitle: UILabel!
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
        
        retailTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if retailTitle.text == "Bargain Corner" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "No Facebook available!!"
            numberLbl.text = "(334) 421-1477"
            latitude = 32.423193
            longitude = -85.689725
            
        }
        if retailTitle.text == "Dollar General" {
            
            websiteLbl.text = "www.dollargeneral.com/"
            facebookLbl.text = "www.facebook.com/pages/Dollar-General/176062235767908"
            numberLbl.text = "(334) 724-8906"
            latitude = 32.421565
            longitude = -85.693104
            
        }
        if retailTitle.text == "Family Dollar" {
            
            websiteLbl.text = "www.familydollar.com/"
            facebookLbl.text = "www.facebook.com/familydollar/"
            numberLbl.text = "(334) 727-3846"
            latitude = 32.422913
            longitude = -85.692717
            
        }
        if retailTitle.text == "Marilyn's Boutique" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "www.facebook.com/pages/Marilyns-Boutique/148730878487251"
            numberLbl.text = "(334) 727-0889"
            latitude = 32.423750
            longitude = -85.694858
            
        }
        if retailTitle.text == "New Beginnings Bridal Formal Wear" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "No Facebook available!!"
            numberLbl.text = "(334) 226-1220"
            latitude = 32.375120
            longitude = -85.834815
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        retailMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = retailTitle.text
        self.retailMap.addAnnotation(objectAnn)
        
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
