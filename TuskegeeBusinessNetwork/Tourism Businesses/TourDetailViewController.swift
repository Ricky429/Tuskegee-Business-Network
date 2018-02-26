//
//  TourDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/9/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class TourDetailViewController: UIViewController {
    
    @IBOutlet weak var tourMap: MKMapView!
    @IBOutlet weak var tourTitle: UILabel!
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
        
        tourTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if tourTitle.text == "Community Tourism Network LLC" {
            
            websiteLbl.text = "www.tourismresource.org/"
            facebookLbl.text = "www.facebook.com/Community-Tourism-Network-154631151274277/"
            numberLbl.text = "(205) 567-6397"
            latitude = 32.426663
            longitude = -85.695894
            
        }
        if tourTitle.text == "Tuskegee History Center" {
            
            websiteLbl.text = "www.tuskegeecenter.org/"
            facebookLbl.text = "www.facebook.com/TuskegeeCenter/"
            numberLbl.text = "(334) 724-0800"
            latitude = 32.422338
            longitude = -85.691346
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        tourMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = tourTitle.text
        self.tourMap.addAnnotation(objectAnn)
        
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
