//
//  InterfaceController.swift
//  MNCraftBeerWatcher WatchKit Extension
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import WatchKit
import MapKit
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    // To request store review
    class UserDefaultsManager {
        
        private static let timesOpened = "Times Opened"
        static var count: Int {   // numberOfTimesOpened
            get {
                return UserDefaults.standard.integer(forKey: timesOpened)
            }
            set {
                UserDefaults.standard.set(newValue, forKey: timesOpened)
            }
        }
    }
    
    
    @IBOutlet var table: WKInterfaceTable!
    @IBOutlet var locationButtonTitle: WKInterfaceButton!
    @IBOutlet var pickerOutlet: WKInterfacePicker!
    
    // Sorts the breweries alphabetically.
    let breweriesSorted = allBreweries.map { $0.breweryName }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        setUpWatchConnectivity()
        
        locationButtonTitle.setTitle("\(allBreweries[0].location)")
        table.setNumberOfRows(7, withRowType: "Row")
        for rowIndex in 0...6 {
            guard let row = table.rowController(at: rowIndex) as? BreweryHoursRow else { continue }
            switch rowIndex {
            case 0:
                row.hoursLabel.setText("Sun: \(allBreweries[0].sun)")
            case 1:
                row.hoursLabel.setText("Mon: \(allBreweries[0].mon)")
            case 2:
                row.hoursLabel.setText("Tue: \(allBreweries[0].tue)")
            case 3:
                row.hoursLabel.setText("Wed: \(allBreweries[0].wed)")
            case 4:
                row.hoursLabel.setText("Thu: \(allBreweries[0].thur)")
            case 5:
                row.hoursLabel.setText("Fri: \(allBreweries[0].fri)")
            case 6:
                row.hoursLabel.setText("Sat: \(allBreweries[0].sat)")
            default:
                row.hoursLabel.setText("Row \(rowIndex)")
            }
        }
    }
    
    
    override func willActivate() {
        super.willActivate()
        pickerOutlet.focus()
        print("\(allBreweries.count) Breweries")
        
        var items = [WKPickerItem]()
        for brewery in breweriesSorted {
            let item = WKPickerItem()
            item.title = brewery
            items.append(item)
        }
        pickerOutlet.setItems(items)
    }
    
    
    @IBAction func locationButton() {
            UserDefaultsManager.count += 1
            print(UserDefaultsManager.count)
        
        // Becuase my son picked "8".
            if UserDefaultsManager.count == 5 {
                sendCountToPhone()
            }
        openMaps()
    }
    
    
    func openMaps() {
        let latitude: CLLocationDegrees = allBreweries[breweryIdentifier].latitude
        let longitude: CLLocationDegrees = allBreweries[breweryIdentifier].longitude
        
        let breweryLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(latitude, longitude))
//        let placeMark = MKPlacemark(coordinate: breweryLocation, addressDictionary: ["address": "Blahh"])
        let placeMark = MKPlacemark(coordinate: breweryLocation)
        let mapItem = MKMapItem(placemark: placeMark)

        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)
        ]

        mapItem.name = ("\(allBreweries[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    
    @IBAction func pickerAction(_ value: Int) {
        breweryIdentifier = value
        locationButtonTitle.setTitle("\(allBreweries[breweryIdentifier].location)")
    
        for rowIndex in 0...6 {
            guard let row = table.rowController(at: rowIndex) as? BreweryHoursRow else { continue }
            switch rowIndex {
            case 0:
                row.hoursLabel.setText("Sun: \(allBreweries[breweryIdentifier].sun)")
            case 1:
                row.hoursLabel.setText("Mon: \(allBreweries[breweryIdentifier].mon)")
            case 2:
                row.hoursLabel.setText("Tue: \(allBreweries[breweryIdentifier].tue)")
            case 3:
                row.hoursLabel.setText("Wed: \(allBreweries[breweryIdentifier].wed)")
            case 4:
                row.hoursLabel.setText("Thu: \(allBreweries[breweryIdentifier].thur)")
            case 5:
                row.hoursLabel.setText("Fri: \(allBreweries[breweryIdentifier].fri)")
            case 6:
                row.hoursLabel.setText("Sat: \(allBreweries[breweryIdentifier].sat)")
            default:
                row.hoursLabel.setText("Row \(rowIndex)")
            }
        }
    }
    
    // MARK: Watch Connectivity.
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("Activation failed with error: \(error.localizedDescription)")
            return
        }
        print("Watch activated with state: \(activationState.rawValue)")
    }
    
    
    func sendCountToPhone() {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
            do {
                let message = ["message": true ]
                try session.updateApplicationContext(message)
            } catch {
                print("Error of type \(error) in sendCountToPhone.")
            }
        }
    }
    
    
    func setUpWatchConnectivity() {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
