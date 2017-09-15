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


    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWatchConnectivity()
    }
    
   
    // MARK: Watch Connectivity. Used to request App Store Rating.
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

