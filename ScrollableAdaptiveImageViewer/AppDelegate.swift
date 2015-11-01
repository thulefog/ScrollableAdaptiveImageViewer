//
//  AppDelegate.swift
//  ScrollableAdaptiveImageViewer
//
//  Originally created by John Matthew Weston in April 2015 with edits since.
//  Images Copyright © 2015 John Matthew Weston.
//  Source Code - Copyright © 2015 John Matthew Weston but published as open source under MIT License.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let viewController = ScrollableImageViewController()
        
        //read JSON data s
        if let file = NSBundle(forClass:AppDelegate.self).pathForResource("SimpleStore", ofType: "json") {
            let data = NSData(contentsOfFile: file)!
            
            let json = JSON(data:data)
            
            //traverse the data set and log to sanity check
            for (index, subJson): (String, JSON) in json["SimpleStore"] {
                let instance = subJson["Instance"].string;
                let description = subJson["Description"].string;
                log( "index \(index) Instance \(instance) | Description \(description)" )
            
                //TODO: assert to enforce expected index of 0 
                viewController.assetName = instance
            }

        }
        
        
        window!.rootViewController = UINavigationController(rootViewController: viewController)
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

