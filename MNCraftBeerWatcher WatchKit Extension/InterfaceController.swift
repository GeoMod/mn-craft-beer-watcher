//
//  InterfaceController.swift
//  MNCraftBeerWatcher WatchKit Extension
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import WatchKit
import MapKit

class InterfaceController: WKInterfaceController {
    
    // Sorts the breweries alphabetically.
    let breweriesSorted = allBreweries.map { $0.breweryName }
    @IBOutlet var table: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
        print(allBreweries.count)
        
        var items = [WKPickerItem]()
        for brewery in breweriesSorted {
            let item = WKPickerItem()
            item.title = brewery
            items.append(item)
        }
        pickerOutlet.setItems(items)
    }
    
    
    @IBOutlet var locationButtonTitle: WKInterfaceButton!
    @IBAction func locationButton() {
        openMaps()

    }
    
    
    func openMaps() {
        let latitude: CLLocationDegrees = allBreweries[breweryIdentifier].latitude
        let longitude: CLLocationDegrees = allBreweries[breweryIdentifier].longitude
        
        let breweryLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegionMake(breweryLocation, MKCoordinateSpanMake(latitude, longitude))
        let placeMark = MKPlacemark(coordinate: breweryLocation, addressDictionary: ["address": "Blahh"])
        
        let mapItem = MKMapItem(placemark: placeMark)

        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: breweryLocation),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)
        ]

        mapItem.name = ("\(allBreweries[breweryIdentifier].breweryName)")
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    
    @IBOutlet var pickerOutlet: WKInterfacePicker!
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
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
