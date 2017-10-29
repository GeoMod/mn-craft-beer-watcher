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

class ViewController: UIViewController, WCSessionDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    private lazy var locationManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        return manager
    }()
    
    var oneMileBrewery: String?
    var halfMileBrewery: String?
    var fiveMileBrewery: String?
    var tenMileBrewery: String?
    
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
    
    // Sorts the breweries alphabetically.
    let breweriesSorted = allBreweries.sorted(by: { $0.breweryName < $1.breweryName })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.startUpdatingLocation()
    
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        pickerView.dataSource = self
        pickerView.delegate = self
        
        mapButtonLabel.setTitle(breweriesSorted[0].location, for: .normal)
        sundayLabel.text = breweriesSorted[0].sun.uppercased()
        mondayLabel.text = breweriesSorted[0].mon.uppercased()
        tuesdayLabel.text = breweriesSorted[0].tue.uppercased()
        wednesdayLabel.text = breweriesSorted[0].wed.uppercased()
        thursdayLabel.text = breweriesSorted[0].thur.uppercased()
        fridayLabel.text = breweriesSorted[0].fri.uppercased()
        saturdayLabel.text = breweriesSorted[0].sat.uppercased()

    }
    
    // All Breweries Map Button
    @IBAction func MapButton(_ sender: Any) {
        let latitude: CLLocationDegrees = breweriesSorted[breweryIdentifier].latitude
        let longitude: CLLocationDegrees = breweriesSorted[breweryIdentifier].longitude
        
        let breweryLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(latitude, longitude))
        let placeMark = MKPlacemark(coordinate: breweryLocation)
        let mapItem = MKMapItem(placemark: placeMark)
        
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)
        ]
        
        mapItem.name = ("\(breweriesSorted[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
    }
    
    // Nearby Brewery Button.
    @IBAction func nearbyBreweryButton(_ sender: UIButton) {
        // Take user to map of nearby Brewery here.
        if nearbyBreweryNameArray.count != 0 {
        
        let breweryLocation = CLLocationCoordinate2D(latitude: nearbyLatitude, longitude: nearbyLongitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(nearbyLatitude, nearbyLongitude))
        let placeMark = MKPlacemark(coordinate: breweryLocation)
        let mapItem = MKMapItem(placemark: placeMark)
        
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)
        ]
        
        mapItem.name = ("\(nearbyBreweryNameArray[0])")
        mapItem.openInMaps(launchOptions: options)
            
        } else {
            return
        }
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
        
        sundayLabel.text = breweriesSorted[row].sun.uppercased()
        mondayLabel.text = breweriesSorted[row].mon.uppercased()
        tuesdayLabel.text = breweriesSorted[row].tue.uppercased()
        wednesdayLabel.text = breweriesSorted[row].wed.uppercased()
        thursdayLabel.text = breweriesSorted[row].thur.uppercased()
        fridayLabel.text = breweriesSorted[row].fri.uppercased()
        saturdayLabel.text = breweriesSorted[row].sat.uppercased()
    }
    
    // MARK: Relative location to Breweries.
    func receiveLocationUpdates() {
        let authorizationStatus = CLLocationManager.authorizationStatus()
        if authorizationStatus != .authorizedWhenInUse || authorizationStatus != .authorizedAlways {
            // Consider an Alert Action asking for permission if the user does not grant it.
            nearbyBreweryLabel.setTitle("No Location Available", for: .normal)
        }
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
        let session = WCSession.default // This was moved from inside the func below...
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
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - CLLocationManagerDelegate
extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Used in Debugging to see location in background.
//        guard let mostRecentLocation = locations.last else { return }
        let userCurrentLocation = locationManager.location
        locationManager.distanceFilter = 4827 // Distance in meters needed to move before app updates again. 3 miles
        
        halfMileBrewery = nil
        oneMileBrewery = nil
        fiveMileBrewery = nil
        tenMileBrewery = nil
        
        allBreweryLoop: for localBrewery in breweriesSorted {
            let nearestBrewery = CLLocation(latitude: localBrewery.latitude, longitude: localBrewery.longitude)
            
            if let currentLocation = userCurrentLocation {
                switch currentLocation.distance(from: nearestBrewery) {
                case 0..<805: // To 1/2 mile
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                    oneMileBrewery = localBrewery.breweryName
                case 805..<1609: // To 1 mile
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                    oneMileBrewery = localBrewery.breweryName
                case 1610..<8046: // To 5 miles
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                    fiveMileBrewery = localBrewery.breweryName
                case 8047..<16090: // To 10 miles
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                    tenMileBrewery = localBrewery.breweryName
                default:
                    nearbyBreweryNameArray.removeAll()
                }
            }
        }
        if halfMileBrewery != nil {
            nearbyBreweryLabel.setTitle(halfMileBrewery, for: .normal)
            nearbyBreweryNameArray.insert(halfMileBrewery!, at: 0)
        } else if oneMileBrewery != nil {
            nearbyBreweryLabel.setTitle(oneMileBrewery, for: .normal)
            nearbyBreweryNameArray.insert(oneMileBrewery!, at: 0)
        } else if fiveMileBrewery != nil {
            nearbyBreweryLabel.setTitle(fiveMileBrewery, for: .normal)
            nearbyBreweryNameArray.insert(fiveMileBrewery!, at: 0)
        } else if tenMileBrewery != nil {
            nearbyBreweryLabel.setTitle(tenMileBrewery, for: .normal)
            nearbyBreweryNameArray.insert(tenMileBrewery!, at: 0)
        } else {
            nearbyBreweryLabel.setTitle("Searching", for: .normal)
            nearbyBreweryNameArray.removeAll()
            complicationData = "MN Breweries"
            sendNearbyBreweryToWatch()
        }
        if nearbyBreweryNameArray.count != 0 {
            complicationData = nearbyBreweryNameArray[0]
            sendNearbyBreweryToWatch()
        }
        if UIApplication.shared.applicationState != .active {
//            print("App is not active. New location is %@", mostRecentLocation)
            assert(UIApplication.shared.applicationState != .active)
            let session = WCSession.default
            if WCSession.isSupported() && session.isComplicationEnabled {
                sendNearbyBreweryToWatch()
            }
        } else {
            return
        }
    }
    
}

