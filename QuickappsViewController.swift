//
//  QuickappsViewController.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 13/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import UIKit
import WebKit

class QuickappsViewController: UIViewController {
    
    var webView:WKWebView!
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //set title to quickapps
    self.navigationItem.title = "Quickapps"
        
      
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadWebsite()
        
        slideMenu()
        
    }
    
    
    
    
    
    
    //Mark: Fuctions

    ///load website
    
    
    func loadWebsite(){
        
        webView = WKWebView()
        
        container.addSubview(webView)
        
        let frame = CGRect(x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        
        webView.frame = frame
        
        let urlStr = "http://www.manorstone.ie/"
        
        let url = NSURL(string:urlStr)!
        
        let request = NSURLRequest(url:url as URL)
        
        webView.load(request as URLRequest)
        

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







