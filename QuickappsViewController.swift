//
//  QuickappsViewController.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 13/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import UIKit
import WebKit

import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class QuickappsViewController: UIViewController {
    
    
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ///Firebase Push Notifications
        
        FIRMessaging.messaging().subscribe(toTopic: "/topics/news")
        
    


    //set title to quickapps
    self.navigationItem.title = "QuickApps"
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    slideMenu()
        
        LoadWebsite()
        
        
        
    }
    
    

    
    //Load our website//
    
    func LoadWebsite(){
        
        let URL = Foundation.URL(string: "http://www.quickapps.ie/qa")
        
        let request = URLRequest(url: URL! as URL)
        
        webView.loadRequest(request as URLRequest)
        
        
        
        
        
    }
    
    
    //slidemenubuttons//
    
    
    func slideMenu(){
        
//burger slide menu
        
        if revealViewController() != nil {
            
            menuBar.target = revealViewController()
            menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
            
            
            //slide out menu
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
            
            //customize width of menu
            
            self.revealViewController().rearViewRevealWidth = 210

            
        }

        
        
        

    
    
    
    
    }



}







