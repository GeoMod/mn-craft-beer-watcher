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
import CoreLocation
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate, UIPickerViewDataSource, UIPickerViewDelegate, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var mapButtonLabel: UIButton!
    @IBOutlet var nearbyBreweryLabel: UIButton!
    
    // Hours Labels
    @IBOutlet var sundayLabel: UILabel!
    @IBOutlet var mondayLabel: UILabel!
    @IBOutlet var tuesdayLabel: UILabel!
    @IBOutlet var wednesdayLabel: UILabel!
    @IBOutlet var thursdayLabel: UILabel!
    @IBOutlet var fridayLabel: UILabel!
    @IBOutlet var saturdayLabel: UILabel!
    
    let breweriesSortedAlphabetically = allBreweries.sorted(by: { $0.breweryName < $1.breweryName })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        pickerView.dataSource = self
        pickerView.delegate = self
        
        mapButtonLabel.setTitle(breweriesSortedAlphabetically[0].location, for: .normal)
        sundayLabel.text = breweriesSortedAlphabetically[0].sun.uppercased()
        mondayLabel.text = breweriesSortedAlphabetically[0].mon.uppercased()
        tuesdayLabel.text = breweriesSortedAlphabetically[0].tue.uppercased()
        wednesdayLabel.text = breweriesSortedAlphabetically[0].wed.uppercased()
        thursdayLabel.text = breweriesSortedAlphabetically[0].thur.uppercased()
        fridayLabel.text = breweriesSortedAlphabetically[0].fri.uppercased()
        saturdayLabel.text = breweriesSortedAlphabetically[0].sat.uppercased()
        
    }
    
    // MARK: Pickerview Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return breweriesSortedAlphabetically.count
    }
    
    // Pickerview Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?  {
        return breweriesSortedAlphabetically[row].breweryName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        breweryIdentifier = row // Used for setting the mapButtonTitle
        mapButtonLabel.setTitle(breweriesSortedAlphabetically[row].location, for: .normal)
        
        sundayLabel.text = breweriesSortedAlphabetically[row].sun.uppercased()
        mondayLabel.text = breweriesSortedAlphabetically[row].mon.uppercased()
        tuesdayLabel.text = breweriesSortedAlphabetically[row].tue.uppercased()
        wednesdayLabel.text = breweriesSortedAlphabetically[row].wed.uppercased()
        thursdayLabel.text = breweriesSortedAlphabetically[row].thur.uppercased()
        fridayLabel.text = breweriesSortedAlphabetically[row].fri.uppercased()
        saturdayLabel.text = breweriesSortedAlphabetically[row].sat.uppercased()
    }
    
    
    // Selected brewery map button.
    @IBAction func MapButton(_ sender: Any) {
        
        let breweryLocationCoordinate = breweriesSortedAlphabetically[breweryIdentifier].latLong.coordinate
        let placeMark = MKPlacemark(coordinate: breweryLocationCoordinate)
        let mapItem = MKMapItem(placemark: placeMark)

        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocationCoordinate)
        ]

        mapItem.name = ("\(breweriesSortedAlphabetically[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 4827 // Distance in meters needed to move before app updates again. 3 miles
       
        let userCurrentLocation = locationManager.location
        if let currentLocation = userCurrentLocation {
            let nearestBrewery = closestBrewery(allBreweries, currentLocation: currentLocation)
            updateUI(brewery: nearestBrewery)
        } else {
            return
        }
    }
    
    
    // MARK Finding nearest brewery.
    func closestBreweries(_ breweries: [BreweryData], currentLocation: CLLocation) -> [BreweryData] {
        return breweries.sorted {
            $0.latLong.distance(from: currentLocation) <
            $1.latLong.distance(from: currentLocation)
        }
    }
    
    func closestBrewery(_ breweries: [BreweryData], currentLocation: CLLocation) -> BreweryData {
        assert(!breweries.isEmpty, "No breweries found.")
        return closestBreweries(breweries, currentLocation: currentLocation)
            .first! // The first brewery will be the closest one
    }
    
    func updateUI(brewery: BreweryData) {
        nearbyBrewery = brewery.breweryName
        nearbyLatLong = brewery.latLong.coordinate
        nearbyBreweryLabel.setTitle(nearbyBrewery, for: .normal)
        complicationData = nearbyBrewery
        
        // Update watch complication.
        let session = WCSession.default
        if UIApplication.shared.applicationState != .active {
            assert(UIApplication.shared.applicationState != .active)
            if WCSession.isSupported() && session.isComplicationEnabled {
                sendNearbyBreweryToWatch()
            }
        }
        if WCSession.isSupported() && session.isComplicationEnabled {
            sendNearbyBreweryToWatch()
        }
    }
    
    
    // Nearby Brewery Button.
    @IBAction func nearbyBreweryButton(_ sender: UIButton) {
        // Take user to map of nearby brewery.
        let breweryLocation = nearbyLatLong
        let placeMark = MKPlacemark(coordinate: breweryLocation)
        let mapItem = MKMapItem(placemark: placeMark)
        
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
        ]
        
        mapItem.name = nearbyBrewery
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    
    // MARK: Watch Connectivity.
    // Used to request App Store Rating and pushing nearest brewery to watch complication.
    func sessionDidBecomeInactive(_ session: WCSession) {
        // To support multiple watches.
        print("WC Session did become inactive.")
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        // To support multiple watches.
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
    
    // Receive app usage count from watch.
    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
        let message = applicationContext["UsageCount"] as? Bool
        if message == true {
            SKStoreReviewController.requestReview()
        } else {
            return
        }
    }
    
    // Send nearby brewery to watch complication.
    func sendNearbyBreweryToWatch() {
        let session = WCSession.default
        if session.activationState == .activated && session.isComplicationEnabled {
            assert(session.activationState == .activated)
            assert(session.isComplicationEnabled)
            locationManager.allowsBackgroundLocationUpdates = true
            // Transfer to watch complication.
            let message = ["complication": complicationData]
            session.transferCurrentComplicationUserInfo(message)
            print("Remaining transfers: \(session.remainingComplicationUserInfoTransfers)")
        } else {
            locationManager.allowsBackgroundLocationUpdates = false
            print("Background Location data not in use.")
            return
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
