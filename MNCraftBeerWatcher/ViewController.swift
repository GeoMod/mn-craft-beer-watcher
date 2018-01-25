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
    @IBOutlet weak var webLinkOutlet: UIButton!
    
    
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
        pickerView(pickerView, didSelectRow: 0, inComponent: 0)
    }
    
    
    // MARK: Pickerview Data Source
    let locations = breweries.map { $0.location }
    let breweryNames = breweries.map { $0.breweryName }
    var filteredBreweries = [BreweryData]() // To display only the breweries from the selected city.
 
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let uniqueCities = locations.uniqueElements
        switch component {
        case 0:
            return uniqueCities.count
        case 1:
            return filteredBreweries.count
        default:
            return 0
        }
    }

    
    // Pickerview Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var uniqueCities = locations.uniqueElements
        uniqueCities.sort { $0 < $1 }
        
        switch component {
        case 0:
            return uniqueCities[row]
        case 1:
            return filteredBreweries[row].breweryName
        default:
            return nil
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var uniqueCities = locations.uniqueElements
        uniqueCities.sort { $0 < $1 }
        
        switch component {
        case 0:
            breweryIdentifier = 0
            filteredBreweries.removeAll(keepingCapacity: false)
            selectedCity = uniqueCities[row]
            let currentBreweries = breweries.filter { return $0.location == selectedCity }
            for i in currentBreweries.map({ $0 }) {
                filteredBreweries.append(i)
            }
            setMapButtonTitle()
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
        case 1:
            breweryIdentifier = row
            setMapButtonTitle()
        default:
            return
        }
    }
    
    
    func setMapButtonTitle() {
        mapButtonLabel.setTitle(filteredBreweries[breweryIdentifier].breweryName, for: .normal)
    }
    
    @IBAction func webLink(_ sender: Any) {
        UIApplication.shared.open(filteredBreweries[breweryIdentifier].url, options: [:], completionHandler: nil)
    }
    
    
    // Selected brewery map button.
    @IBAction func MapButton(_ sender: Any) {
        let breweryLocationCoordinate = filteredBreweries[breweryIdentifier].latLong.coordinate
        let placeMark = MKPlacemark(coordinate: breweryLocationCoordinate)
        let mapItem = MKMapItem(placemark: placeMark)

        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocationCoordinate)
        ]
        mapItem.name = ("\(filteredBreweries[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 4827 // Distance in meters needed to move before app updates again. 3 miles
       
        let userCurrentLocation = locationManager.location
        if let currentLocation = userCurrentLocation {
            let nearestBrewery = closestBrewery(breweries, currentLocation: currentLocation)
            updateUI(brewery: nearestBrewery)
            
            // Update watch complication. Moved from updateUI(brewery:)
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
