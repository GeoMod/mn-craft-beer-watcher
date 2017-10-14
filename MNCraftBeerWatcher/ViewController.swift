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
    
    var locationManager: CLLocationManager!
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var mapButtonLabel: UIButton!
    
    // Nearby Brewery Button-Label
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
        setUpWatchConnectivity()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.delegate = self
        receiveLocationUpdates()
        
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
    /*
       **Moved code directly into "MapButton"** 10/14/17
    // Maps func for brewery selected from Picker.
    func openMaps() {
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
*/
    
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
        locationManager.requestWhenInUseAuthorization()
        let authorizationStatus = CLLocationManager.authorizationStatus()
        if authorizationStatus != .authorizedWhenInUse || authorizationStatus != .authorizedAlways {
            // Implement an Alert Action here asking for permission if the user does not grant it.
            nearbyBreweryLabel.setTitle("No Location Available", for: .normal)
        }
        locationManager.startUpdatingLocation()
        print("Receive Location Updates")
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Location Manager")
        locationManager.distanceFilter = 9656 // Distance in meters needed to move before app updates again. 6 miles
        let userCurrentLocation = locationManager.location
        
        for localBrewery in allBreweries {
            let nearestBrewery = CLLocation(latitude: localBrewery.latitude, longitude: localBrewery.longitude)
            
            if let currentLocation = userCurrentLocation {
                switch currentLocation.distance(from: nearestBrewery) {
                case 0..<1609: // 1 mile
                    nearbyBreweryNameArray.insert(localBrewery.breweryName, at: 0)
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                case 1610..<8046: // From 1 mile to 5 miles
                    nearbyBreweryNameArray.insert(localBrewery.breweryName, at: 0)
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                case 8047..<16090: // From 5 miles to 10 miles in meters
                    nearbyBreweryNameArray.insert(localBrewery.breweryName, at: 0)
                    nearbyLatitude = localBrewery.latitude
                    nearbyLongitude = localBrewery.longitude
                default:
                    // No nearby brewery? Reset array to empty and Lat/Long to 0.0
                    nearbyBreweryNameArray = []
                    nearbyLatitude = 0.0
                    nearbyLongitude = 0.0
                }
            }
        }
        
        if nearbyBreweryNameArray.count != 0 {
            nearbyBreweryLabel.setTitle(nearbyBreweryNameArray[0], for: .normal)
        } else {
            nearbyBreweryLabel.setTitle("No Nearby Breweries.", for: .normal)
        }
    }
    
    
// MARK: Watch Connectivity.
    // Used to request App Store Rating and pushing nearest brewery to watch complication.
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

