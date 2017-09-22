//
//  ViewController.swift
//  MNCraftBeerWatcher
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import UIKit
import StoreKit
import MapKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
   
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var mapButtonLabel: UIButton!
    
    // Hours Labels
    @IBOutlet var sundayLabel: UILabel!
    @IBOutlet var mondayLabel: UILabel!
    @IBOutlet var tuesdayLabel: UILabel!
    @IBOutlet var wednesdayLabel: UILabel!
    @IBOutlet var thursdayLabel: UILabel!
    @IBOutlet var fridayLabel: UILabel!
    @IBOutlet var saturdayLabel: UILabel!
    
    
    // Sorts the breweries alphabetically.
    let breweriesSorted = allBreweries.sorted(by: { $0.breweryName < $1.breweryName })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWatchConnectivity()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        mapButtonLabel.setTitle(breweriesSorted[0].location, for: .normal)
        sundayLabel.text = "Sunday: \(breweriesSorted[0].sun)"
        mondayLabel.text = "Monday: \(breweriesSorted[0].mon)"
        tuesdayLabel.text = "Tuesday: \(breweriesSorted[0].tue)"
        wednesdayLabel.text = "Wednesday: \(breweriesSorted[0].wed)"
        thursdayLabel.text = "Thursday: \(breweriesSorted[0].thur)"
        fridayLabel.text = "Friday: \(breweriesSorted[0].fri)"
        saturdayLabel.text = "Saturday: \(breweriesSorted[0].sat)"
    }
    
    
    @IBAction func MapButton(_ sender: Any) {
        openMaps()
    }
    
    // Consdier just putting this inside the MapButton()
    func openMaps() {
        let latitude: CLLocationDegrees = breweriesSorted[breweryIdentifier].latitude
        let longitude: CLLocationDegrees = breweriesSorted[breweryIdentifier].longitude
        
        let breweryLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(latitude, longitude))
        //        let placeMark = MKPlacemark(coordinate: breweryLocation, addressDictionary: ["address": "test label"])
        let placeMark = MKPlacemark(coordinate: breweryLocation)
        let mapItem = MKMapItem(placemark: placeMark)
        
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)
        ]
        
        mapItem.name = ("\(breweriesSorted[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    
    // MARK: Pickerview Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return breweriesSorted.count
    }
    
    // Pickerview Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?  {
        return breweriesSorted[row].breweryName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        breweryIdentifier = row // Used for setting the mapButtonTitle
        mapButtonLabel.setTitle(breweriesSorted[row].location, for: .normal)
        
        sundayLabel.text = "Sunday: \(breweriesSorted[row].sun)"
        mondayLabel.text = "Monday: \(breweriesSorted[row].mon)"
        tuesdayLabel.text = "Tuesday: \(breweriesSorted[row].tue)"
        wednesdayLabel.text = "Wednesday: \(breweriesSorted[row].wed)"
        thursdayLabel.text = "Thursday: \(breweriesSorted[row].thur)"
        fridayLabel.text = "Friday: \(breweriesSorted[row].fri)"
        saturdayLabel.text = "Saturday: \(breweriesSorted[row].sat)"
        
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

