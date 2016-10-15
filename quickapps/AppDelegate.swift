//
//  AppDelegate.swift
//  quickapps
//
//  Created by QUICK APPS STUDIOS on 13/10/2016.
//  Copyright © 2016 QUICK APPS STUDIOS. All rights reserved.
//

import UIKit
import UserNotifications
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        
        //status Bar white
        
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        
        
        //Push notification badge//
        if #available(iOS 10.0, *) {
            let settings: UIUserNotificationSettings = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
            application.registerForRemoteNotifications()
        } else {
            let types: UIRemoteNotificationType = [.alert, .badge, .sound]
            application.registerForRemoteNotifications(matching: types)
            
        }

        //ADD FIREBASE
        
        FIRApp.configure()
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.tokenRefreshNotification(notification:)), name: NSNotification.Name.firInstanceIDTokenRefresh, object: nil)
        

      
        
        ///Walkthrough
        
        let pageControl = UIPageControl()
        pageControl.pageIndicatorTintColor = UIColor.orange
        
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.backgroundColor = UIColor.white
        
        
        
        
        //User Local  Notifications
        
        //1. request permission
        
       // UNUserNotificationCenter.current().requestAuthorization(options:[.alert,.badge,.sound], completionHandler: {(granted,error) in
            
            
            //if granted{
            
            
           // print("We have permission to use this")
            
            //}else{
                
             //print(error?.localizedDescription)
                
            //}
            
        //})
        
       
        
        
        //color of white for title
        
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        
        
        //change tab bar tint color
        UITabBar.appearance().tintColor = UIColor.orange
        
    return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        
        FIRMessaging.messaging().disconnect()
        
        
        
        
        
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        connectToFCM()
        
        
        
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    
    
    
    
    
    
    //Firebase functions
    
    
    
    func tokenRefreshNotification(notification: NSNotification) {
        let refreshedToken = FIRInstanceID.instanceID().token()
        print("InstanceID token: \(refreshedToken)")
        
        connectToFCM()
    }
    
    
    func connectToFCM(){
        
        FIRMessaging.messaging().connect { (error) in
            
            if (error != nil) {
                print("Unable to connect to FCM \(error)")
            } else {
                print("Connected to FCM")
            }
        }
        
            
            
            
            }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    




