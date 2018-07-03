//
//  AppDelegate.swift
//  Swift_PrimeNo
//
//  Created by Student P_02 on 03/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController:UIViewController?
    var myTextField:UITextField?
    var myLabel:UILabel?
    var myButton:UIButton?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        window=UIWindow(frame: UIScreen.main.bounds)
        viewController=UIViewController()
        window?.rootViewController=viewController
        
        viewController?.view.backgroundColor=UIColor.white
        
        myTextField=UITextField()
        myTextField?.frame = CGRect(x: 50, y:100 , width: 300, height: 45)
        myTextField?.placeholder="Enter Greater 2 Number"
        myTextField?.backgroundColor=UIColor.lightGray
        myTextField?.textColor=UIColor.red
        myTextField?.font=UIFont.boldSystemFont(ofSize: 25)
        myTextField?.becomeFirstResponder()
        viewController?.view.addSubview(myTextField!)
        
        
        
        myLabel=UILabel()
        myLabel?.frame=CGRect(x: 10, y: 200, width: 400, height: 45)
        myLabel?.backgroundColor=UIColor.lightGray
        myLabel?.textColor=UIColor.blue
        myLabel?.font=UIFont.boldSystemFont(ofSize: 30)
        viewController?.view.addSubview(myLabel!)
        
        myButton=UIButton()
        myButton?.frame=CGRect(x: 140, y: 300, width: 100, height: 60)
        myButton?.backgroundColor=UIColor.yellow
        myButton?.setTitle("Press", for: UIControlState.normal)
        myButton?.setTitleColor(UIColor.blue, for: UIControlState.normal)
        myButton?.addTarget(self, action: #selector(CheckPrimeNO(sender:)), for: UIControlEvents.touchUpInside)

        viewController?.view.addSubview(myButton!)

        
        window?.makeKeyAndVisible()

        
        
        // Override point for customization after application launch.
        return true
    }
func CheckPrimeNO(sender:AnyObject)
{
     let value:Int = Int((myTextField?.text)!)!

    if value != 1 && value != 2
    {
        
    for i in 2 ..< value
        {
            if value % i==0
            {
            
                print("\(value) is not a Prime Number")
                myLabel?.text="\(value) is not a prime Number"
                break
        
        }
            print("\(value) is Prime Number")
            myLabel?.text="\(value) is a prime Number"
            break
        }
     
    }
}
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

