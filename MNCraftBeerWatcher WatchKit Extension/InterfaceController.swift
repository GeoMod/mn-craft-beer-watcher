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
        static var count: Int {
            get {
                return UserDefaults.standard.integer(forKey: timesOpened)
            }
            set {
                UserDefaults.standard.set(newValue, forKey: timesOpened)
            }
        }
    }
    
    // Sorts the breweries alphabetically.
    let breweriesSorted = allBreweries.sorted(by: { $0.breweryName < $1.breweryName })
    
    @IBOutlet var table: WKInterfaceTable!
    @IBOutlet var locationButtonTitle: WKInterfaceButton!
    @IBOutlet var pickerOutlet: WKInterfacePicker!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        
        locationButtonTitle.setTitle("\(breweriesSorted[0].location)")
        table.setNumberOfRows(7, withRowType: "Row")
        for rowIndex in 0...6 {
            guard let row = table.rowController(at: rowIndex) as? BreweryHoursRow else { continue }
            switch rowIndex {
            case 0:
                row.hoursLabel.setText("Sun: \(breweriesSorted[0].sun)")
            case 1:
                row.hoursLabel.setText("Mon: \(breweriesSorted[0].mon)")
            case 2:
                row.hoursLabel.setText("Tue: \(breweriesSorted[0].tue)")
            case 3:
                row.hoursLabel.setText("Wed: \(breweriesSorted[0].wed)")
            case 4:
                row.hoursLabel.setText("Thu: \(breweriesSorted[0].thur)")
            case 5:
                row.hoursLabel.setText("Fri: \(breweriesSorted[0].fri)")
            case 6:
                row.hoursLabel.setText("Sat: \(breweriesSorted[0].sat)")
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
            item.title = brewery.breweryName
            items.append(item)
        }
        pickerOutlet.setItems(items)
    }
    
    
    @IBAction func locationButton() {
            UserDefaultsManager.count += 1
            print(UserDefaultsManager.count)
        
        // Becuase my son picked "8".
            if UserDefaultsManager.count == 8 {
                sendCountToPhone()
            }
        openMaps()
    }
    
    
    func openMaps() {
        let latitude: CLLocationDegrees = allBreweries[breweryIdentifier].latitude
        let longitude: CLLocationDegrees = allBreweries[breweryIdentifier].longitude
        
        let breweryLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(latitude, longitude))
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
        locationButtonTitle.setTitle("\(breweriesSorted[breweryIdentifier].location)")
        print(breweryIdentifier)
        for rowIndex in 0...6 {
            guard let row = table.rowController(at: rowIndex) as? BreweryHoursRow else { continue }
            switch rowIndex {
            case 0:
                row.hoursLabel.setText("Sun: \(breweriesSorted[breweryIdentifier].sun)")
            case 1:
                row.hoursLabel.setText("Mon: \(breweriesSorted[breweryIdentifier].mon)")
            case 2:
                row.hoursLabel.setText("Tue: \(breweriesSorted[breweryIdentifier].tue)")
            case 3:
                row.hoursLabel.setText("Wed: \(breweriesSorted[breweryIdentifier].wed)")
            case 4:
                row.hoursLabel.setText("Thu: \(breweriesSorted[breweryIdentifier].thur)")
            case 5:
                row.hoursLabel.setText("Fri: \(breweriesSorted[breweryIdentifier].fri)")
            case 6:
                row.hoursLabel.setText("Sat: \(breweriesSorted[breweryIdentifier].sat)")
            default:
                row.hoursLabel.setText("Row \(rowIndex)")
            }
        }
    }
    
    // MARK: Watch Connectivity. Used send a message from the Watch to iPhone requesting App Store Rating.
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
                let message = ["UsageCount": true ]
                try session.updateApplicationContext(message)
            } catch {
                print("Error of type \(error) in sendCountToPhone.")
            }
        }
    }
    
    func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : Any] = [:]) {
        DispatchQueue.main.async {
            if let receivedNearbyBrewery = userInfo["nearbyBrewery"] as? String {
                complicationData.append(receivedNearbyBrewery)
            } else if let brewery = userInfo["complication"] as? String {
                UserDefaults.standard.set(brewery, forKey: "NearbyBreweryForComplication")
                let server = CLKComplicationServer.sharedInstance()
                guard let complications = server.activeComplications else { return }
                for complication in complications {
                    server.reloadTimeline(for: complication)
                }
            }
        }
    }
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
