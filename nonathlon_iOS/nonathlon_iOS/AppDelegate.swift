//
//  AppDelegate.swift
//  nonathlon_iOS
//
//  Created by Paul Ryan on 17/11/2015.
//  Copyright © 2015 Paul Ryan. All rights reserved.
//

import UIKit
import RealmSwift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let myGreenColour: UIColor = UIColor(red: 0.4627, green: 0.8196, blue: 0.4627, alpha: 1.0) /* #76d176 */
        let lightGreenColour: UIColor = UIColor(hue: 0.3333, saturation: 0.33, brightness: 0.95, alpha: 1.0) /* #a3f4a3 */
        UINavigationBar.appearance().tintColor = myGreenColour
        UINavigationBar.appearance().barTintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : myGreenColour]
        UITableView.appearance().backgroundColor = lightGreenColour
        UITabBar.appearance().tintColor = myGreenColour
        //hide line above tab bar and below nav bar
        UITabBar.appearance().clipsToBounds = true
        UITabBar.appearance().barTintColor = UIColor.whiteColor()   
        UINavigationBar.appearance().clipsToBounds = true
        
        do {
            let realm = try Realm()
            let weights = realm.objects(Weight)
            let genders = realm.objects(Gender)
            let distances = realm.objects(Distance)
            
            if (genders.count == 0) { //2
                //set up some static data
                
                let female = Gender()
                female.id=1
                female.name = "Female"
                let male = Gender()
                male.id=0
                male.name = "Male"
                
                
                // Save your object
                realm.beginWrite()
                realm.add(male)
                realm.add(female)
                try! realm.commitWrite()
            }
            
            if (weights.count == 0) { //2
                //set up some static data
                
                let lightWeight = Weight()
                lightWeight.id=0
                lightWeight.name = "LightWeight"
                lightWeight.shortCode = "LW"
                
                let heavyWeight = Weight()
                heavyWeight.id=1
                heavyWeight.name = "HeavyWeight"
                heavyWeight.shortCode = "HW"
                
                // Save your object
                realm.beginWrite()
                realm.add(heavyWeight)
                realm.add(lightWeight)
                try! realm.commitWrite()
            }
            
            if (distances.count == 0) {
                //set up some static data
                
                let fiveHundredMeters = Distance()
                fiveHundredMeters.id = 0
                fiveHundredMeters.name = "500 meters"
                fiveHundredMeters.shortCode = "500"
                
                let thousandMeters = Distance()
                thousandMeters.id = 1
                thousandMeters.name = "1000 meters"
                thousandMeters.shortCode = "1K"
                
                let twoThousandMeters = Distance()
                twoThousandMeters.id = 2
                twoThousandMeters.name = "2000 meters"
                twoThousandMeters.shortCode = "2K"
                
                let fiveThousandMeters = Distance()
                fiveThousandMeters.id = 3
                fiveThousandMeters.name = "5000 meters"
                fiveThousandMeters.shortCode = "5K"
                
                let sixThousandMeters = Distance()
                sixThousandMeters.id = 4
                sixThousandMeters.name = "6000 meters"
                sixThousandMeters.shortCode = "6K"
                
                let tenThousandMeters = Distance()
                tenThousandMeters.id = 5
                tenThousandMeters.name = "10000 meters"
                tenThousandMeters.shortCode = "10K"
                
                let halfHour = Distance()
                halfHour.id = 6
                halfHour.name = "Half Hour"
                halfHour.shortCode = "30"
    
                let hour = Distance()
                hour.id = 7
                hour.name = "Hour"
                hour.shortCode = "60"
                
                let halfMarathon = Distance()
                halfMarathon.id = 8
                halfMarathon.name = "Half Marathon"
                halfMarathon.shortCode = "HM"
                
                let marathon = Distance()
                marathon.id = 9
                marathon.name = "Marathon"
                marathon.shortCode = "M"
                
                let bonus = Distance()
                bonus.id = 10
                bonus.name = "Bonus"
                bonus.shortCode = "+"


                
                // Save your object
                realm.beginWrite()
                realm.add(fiveHundredMeters)
                realm.add(thousandMeters)
                realm.add(twoThousandMeters)
                realm.add(fiveThousandMeters)
                realm.add(sixThousandMeters)
                realm.add(tenThousandMeters)
                realm.add(halfHour)
                realm.add(hour)
                realm.add(halfMarathon)
                realm.add(marathon)
                realm.add(bonus)
                try! realm.commitWrite()
            }
            
        } catch let error as NSError {
           
            NSLog("errored")
            print(error)
        }


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

