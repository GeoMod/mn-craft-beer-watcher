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

    var locationManager: CLLocationManager?
    let session = WCSession.default
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var mapButtonLabel: UIButton!
    @IBOutlet var nearbyBreweryLabel: UIButton!
    @IBOutlet weak var webLinkOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
        enableLocationServices()
        
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
    
    
    // MARK: Location Services
    func enableLocationServices() {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            // Request when-in-use authorization initially
            locationManager?.requestWhenInUseAuthorization()
        case .restricted, .denied:
            // Disable location features
            locationManager?.stopUpdatingLocation()
        case .authorizedAlways:
            // Enable any of your app's location features
            locationManager?.requestAlwaysAuthorization()
            locationManager?.startUpdatingLocation()
        case .authorizedWhenInUse:
            // Enable basic location features
            locationManager?.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .restricted, .denied:
            locationManager?.stopUpdatingLocation()
        case .authorizedAlways:
            locationManager?.requestAlwaysAuthorization()
            locationManager?.startUpdatingLocation()
        case .authorizedWhenInUse:
            locationManager?.startUpdatingLocation()
        case .notDetermined:
            break
        }
    }

    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.distanceFilter = 4826 // Distance in meters needed to move before app updates again. 3 miles
        
        if let currentLocation = locations.last  {
            print("Current location is \(currentLocation).")
            let nearestBrewery = closestBrewery(breweries, currentLocation: currentLocation)
            updateUI(brewery: nearestBrewery)
            if session.isComplicationEnabled { // WCSession.isSupported() &&
                escalateLocationServiceAuthorization()
                locationManager?.allowsBackgroundLocationUpdates = true
                sendNearbyBreweryToWatch()
            }
        }
    }

    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error in Location Services is: \(error.localizedDescription)")
    }

    func escalateLocationServiceAuthorization() {
        // Escalate only when the authorization is set to when-in-use
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            locationManager?.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        manager.desiredAccuracy = kCLLocationAccuracyBest
//        manager.distanceFilter = kCLDistanceFilterNone // Distance in meters needed to move before app updates again. 3 miles = 4826
//
////        let userCurrentLocation = manager.location
//        if let currentLocation = locations.last  { // userCurrentLocation
//            let nearestBrewery = closestBrewery(breweries, currentLocation: currentLocation)
//            updateUI(brewery: nearestBrewery)
//
//            // Update watch complication.
//            let session = WCSession.default
//            if UIApplication.shared.applicationState != .active {
//                assert(UIApplication.shared.applicationState != .active)
//                if WCSession.isSupported() && session.isComplicationEnabled {
//                    manager.allowsBackgroundLocationUpdates = true
//                    manager.allowDeferredLocationUpdates(untilTraveled: 4827, timeout: 7200) // 4827 is 3 miles in meters. 7200 is 2 hours in seconds.
//                    sendNearbyBreweryToWatch()
//                }
//            }
//            if WCSession.isSupported() && session.isComplicationEnabled {
//                manager.disallowDeferredLocationUpdates()
//                sendNearbyBreweryToWatch()
//            }
//        } else {
//            return
//        }
//    }
    
    
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
        if session.activationState == .activated && session.isComplicationEnabled {
            assert(session.activationState == .activated)
            assert(session.isComplicationEnabled)
            // Transfer to watch complication.
            let message = ["complication": complicationData]
            session.transferCurrentComplicationUserInfo(message)
            print("Foregound transfer: \(session.remainingComplicationUserInfoTransfers)")
        } else {
            locationManager?.allowsBackgroundLocationUpdates = false
            print("Background Location data not in use.")
            return
        }
    }
    
//    func backgroundLocationUpdates(_ status: CLAuthorizationStatus) {
//        switch status {
//        case .authorizedAlways:
//            locationManager?.startMonitoringSignificantLocationChanges()
//            print("Backgound updates.")
//        default:
//            print("Default")
//            return
//        }
//    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
