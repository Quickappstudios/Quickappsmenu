//
//  TabbarController.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 15/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let isFirstLaunched = UserDefaults.standard.bool(forKey: "isFirstLaunched")
        
        
        if isFirstLaunched == true {
            
            
            dismiss(animated: true, completion: nil)
            
            print("Its is not First Lauched")
            
        }else{
            
            
            
            DispatchQueue.main.async {
                
                
                
                print("app was launched")
                
                
                
                let landingViewController = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "LandingVC")
                
                self.present(landingViewController,animated:true, completion:nil)
                
                
                
                //save our bool to memory
                
                UserDefaults.standard.set(true, forKey: (forKey: "isFirstLaunched") as String)
                
                
                
            }
        }
        
        
        
        
    }
    
    
}



    


        
        



