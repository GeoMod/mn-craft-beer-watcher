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

class ViewController: UIViewController, WCSessionDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var CitiesLabel: UIButton!
    @IBOutlet var BreweriesPicker: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BreweriesPicker.dataSource = self
        BreweriesPicker.delegate = self
        setUpWatchConnectivity()
    }
    
    
    @IBAction func CitiesButton(_ sender: Any) {
        print("Button Pressed")
    }
    
    // MARK: Pickerview for the scrollable list of breweries.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allBreweries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let breweries = allBreweries[row]
        return breweries.breweryName
    }

   
    
    
    
    
    
    // MARK: Watch Connectivity.
    // Used to request App Store Rating.
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

