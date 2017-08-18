//
//  InterfaceController.swift
//  MNCraftBeerWatcher WatchKit Extension
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var breweriesSorted = [String]()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // For display in the watch picker.
        for i in allBreweries {
            breweriesSorted.append(i.breweryName)
        }
        breweriesSorted.sort()
        locationLabel.setText("\(allBreweries[0].location)")
        
        table.setNumberOfRows(7, withRowType: "Row")
        
        // Likely incorporate a Switch statement in conjunction with what brewery is selected to display the proper hours in the proper rows.
        for rowIndex in 0...7 {
            guard let row = table.rowController(at: rowIndex) as? BreweryHoursRow else { continue }
            row.hoursLabel.setText("Row \(rowIndex)")
        }
        
        
    }
    
    override func willActivate() {
        super.willActivate()
        pickerOutlet.focus()
        
        var items = [WKPickerItem]()
        for brewery in breweriesSorted {
            let item = WKPickerItem()
            item.title = brewery
            items.append(item)
        }
        pickerOutlet.setItems(items)
        
    }
    
    @IBOutlet var pickerOutlet: WKInterfacePicker!
    @IBAction func pickerAction(_ value: Int) {
        breweryIdentifier = value
        // This label may change, used as a prototype thus far
        // Consider changing to a button which brings up the map.
        locationLabel.setText("\(allBreweries[breweryIdentifier].location)")
        
    }
    
    @IBOutlet var locationLabel: WKInterfaceLabel!
    
    @IBOutlet var table: WKInterfaceTable!
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
