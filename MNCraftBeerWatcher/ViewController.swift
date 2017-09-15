//
//  ViewController.swift
//  MNCraftBeerWatcher
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import UIKit
import StoreKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    @IBOutlet var label: UILabel!
//    var count = 0
    
    
//    class UserDefaultsManager {
//        
//        private static let timesOpened = "Times Opened"
//        static var count: Int {   // numberOfTimesOpened
//            get {
//                return UserDefaults.standard.integer(forKey: timesOpened)
//            }
//            set {
//                UserDefaults.standard.set(newValue, forKey: timesOpened)
//            }
//        }
//    }


    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWatchConnectivity()
        
//        UserDefaultsManager.numberOfTimesOpened += 1
//        print(UserDefaultsManager.numberOfTimesOpened)
//
//        if UserDefaultsManager.numberOfTimesOpened == 7 {
//            SKStoreReviewController.requestReview()
//        }
    }
    
   
// MARK: Watch Connectivity

    func sessionDidBecomeInactive(_ session: WCSession) {
        print("WC Session did become inactive.")
    }

    func sessionDidDeactivate(_ session: WCSession) {
        WCSession.default.activate()
        print("WC Session did deactivate.")
    }

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("WC Session activation failed with error: \(error.localizedDescription)")
            return
        }
        print("Phone activated with state: \(activationState.rawValue)")
    }

    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
        let message = applicationContext["message"] as? Bool
        if message == true {
            SKStoreReviewController.requestReview()
        } else {
            print("not true")
        }
//        let message = applicationContext["message"] as? String
//        let message = applicationContext["message"] as? Int
//
//        UserDefaultsManager.count += message!
//        print(UserDefaultsManager.count)
//        label.text = "\(message!)"
//        print("\(message!)")
//
//        if UserDefaultsManager.count == 7 {
//            SKStoreReviewController.requestReview()
//        }
//
        
    }
    
    func setUpWatchConnectivity() {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

