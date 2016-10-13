//
//  QuickappsViewController.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 13/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import UIKit

import WebKit



class QuickplayViewController: UIViewController {
    
    
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    
    

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationItem.title = "QuickPlay"
        
          slideMenu()
            
            
            
        }
    
    
    
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
