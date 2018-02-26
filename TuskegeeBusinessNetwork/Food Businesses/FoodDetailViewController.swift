//
//  FoodDetailViewController.swift
//  TuskegeeBusinessNetwork
//
//  Created by Erik Hemingway on 11/6/17.
//  Copyright © 2017 Erik Hemingway. All rights reserved.
//

import UIKit
import MapKit

class FoodDetailViewController: UIViewController {
    
    @IBOutlet weak var foodMap: MKMapView!
    @IBOutlet weak var foodTitle: UILabel!
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
        
        foodTitle.text = sentData1
        
        self.backButton.title = sentData1
        
        if foodTitle.text == "American Deli" {
            
            websiteLbl.text = "www.americandeli.com/stores/page/tuskegee"
            facebookLbl.text = "www.facebook.com/pages/American-Deli-Tuskegee"
            numberLbl.text = "(334) 439-5123"
            latitude = 32.422212
            longitude = -85.693492
            
        }
        if foodTitle.text == "Burger King" {
            
            websiteLbl.text = "https://www.bk.com/"
            facebookLbl.text = "www.facebook.com/pg/Burger-King-338576586242203"
            numberLbl.text = "(334) 727-5699"
            latitude = 32.427634
            longitude = -85.693244
            
        }
        if foodTitle.text == "China Pavilion" {
            
            websiteLbl.text = "No website available!!"
            facebookLbl.text = "https://www.facebook.com/pages/China-Pavilion"
            numberLbl.text = "(334) 727-0061"
            latitude = 32.425302
            longitude = -85.687125
            
        }
        if foodTitle.text == "Church's Chicken" {
            
            websiteLbl.text = "www.churchs.com/"
            facebookLbl.text = "www.facebook.com/Churchs-Chicken-1426867327602851/"
            numberLbl.text = "(205) 752-9351"
            latitude = 32.425635
            longitude = -85.692720
            
        }
        if foodTitle.text == "McDonald's" {
            
            websiteLbl.text = "www.mcdonalds.com"
            facebookLbl.text = "www.facebook.com/McDonalds401WMartinLutherKingHwy/"
            numberLbl.text = "(334) 727-7157"
            latitude = 32.421295
            longitude = -85.693558
            
        }
        if foodTitle.text == "New China" {
            
            websiteLbl.text = "www.newchinatuskegee.com/"
            facebookLbl.text = "www.facebook.com/pages/New-China/166755856675111"
            numberLbl.text = "(334) 727-2688"
            latitude = 32.420627
            longitude = -85.695506
            
        }
        if foodTitle.text == "Subway" {
            
            websiteLbl.text = "www.subway.com/en-us"
            facebookLbl.text = "www.facebook.com/pages/SUBWAY"
            numberLbl.text = "(334) 727-1636"
            latitude = 32.419955
            longitude = -85.696000
            
        }
        if foodTitle.text == "Tiger Pause Deli" {
            
            websiteLbl.text = "tigerpausetuskegee.webs.com/"
            facebookLbl.text = "www.facebook.com/TigerPauseCafe/"
            numberLbl.text = "(334) 727-1007"
            latitude = 32.423822
            longitude = -85.691503
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        foodMap.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = foodTitle.text
        self.foodMap.addAnnotation(objectAnn)
        
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
