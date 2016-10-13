//
//  sideMenu.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 13/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import Foundation
import UIKit

class sideMenu:UITableViewController{
    
   
    
    
    //create our object for text images
  var menuArray = [String]()
var menuImage = [String]()
    
    
    override func viewDidLoad() {
        
        //add to our array of data
       
        menuArray = ["QUICKAPPS", "QUICKPLAY"]
        
        
        menuImage = ["Program","Blog"]
        
        
        
        ///create a loop
        
        
        
    }
    
    
    
    
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        ///return images and text array
        
        return min (menuArray.count,menuImage.count)
    }
    
    // MARK: - Table view data source
    
   
    
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell!
        
        //populate Image into our table by setting default image
        
         let imageName = menuImage[indexPath.row]
        
             cell?.imageView?.image = UIImage(named: imageName)
            
            //populate data into our menu
            cell?.textLabel?.text = menuArray[indexPath.row]
            
            return cell!
        }
        
        
            
           //let image : UIImage = UIImage(named: "Blog")!
        //print("The loaded image: \(image)")
       
            
        
   
    
    
    
    }
    
    
    
    
    




