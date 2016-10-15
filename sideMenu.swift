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
    var identities = [String]()
    
    
    override func viewDidLoad() {
        
        //add to our array of data for static text
       
        menuArray = ["QUICKAPPS", "QUICKPLAY"]
        
        //add to our array of data for static text
        menuImage = ["Program","Blog"]
        
        //identities = ["Quickapps","Quickplay"]
        
        //identifiers
        //let smOption_One = "toFilmsIWantToSee"
        //let smOption_Two = "toSearchForAnyFilm"
        
        
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        
        
        
        
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
        
        //let image : UIImage = UIImage(named: "Blog")!
        //print("The loaded image: \(image)")
            
            return cell!
        }
        
        
    
    
    //navigate to other screens
    
    
    

    
    
    
    
    
        
        
        
     //let vcName = identities[indexPath.row]
        
        //let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        //self.navigationController?.pushViewController(viewController!, animated: true)
        
        
        
        //let storyBoard : UIStoryboard = UIStoryboard(name: "quickapps", bundle:nil)
        
        //let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Quickapps") as! QuickappsViewController
        //self.present(nextViewController, animated:true, completion:nil)
        
        //print("was pressed")
        
        

        
        
        
        
}




   

    
    

    
    
    






