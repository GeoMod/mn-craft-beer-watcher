//
//  ComplicationController.swift
//  MNCraftBeerWatcher WatchKit Extension
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import ClockKit
import CoreLocation
import WatchConnectivity

class ComplicationController: NSObject, CLKComplicationDataSource, WCSessionDelegate {
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        
        switch complication.family {
        case .modularSmall:
            let modularSmall = CLKComplicationTemplateModularSmallSimpleText()
            let currentBrewery = UserDefaults.standard.string(forKey: "NearbyBreweryForComplication") ?? "MN Breweries"
            if currentBrewery != "MN Breweries" {
                modularSmall.textProvider = CLKSimpleTextProvider(text: "🍺👍🏻")
            } else {
                modularSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            }
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularSmall)
            handler(timelineEntry)
        case .modularLarge:
            let modularLarge = CLKComplicationTemplateModularLargeStandardBody()
            let currentBrewery = UserDefaults.standard.string(forKey: "NearbyBreweryForComplication") ?? "MN Breweries"
            if currentBrewery != "MN Breweries" {
                modularLarge.headerTextProvider = CLKSimpleTextProvider(text: "MN Craft Brewery")
                modularLarge.body1TextProvider = CLKSimpleTextProvider(text: currentBrewery)
                modularLarge.body2TextProvider = CLKSimpleTextProvider(text: "nearby.")
            } else {
                modularLarge.headerTextProvider = CLKSimpleTextProvider(text: "MN Craft Breweries")
                modularLarge.body1TextProvider = CLKSimpleTextProvider(text: "Enjoy Minnesota")
                modularLarge.body2TextProvider = CLKSimpleTextProvider(text: "Craft Beer")
            }
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: modularLarge)
            handler(timelineEntry)
        case .utilitarianSmall:
            let utilitarianSmall = CLKComplicationTemplateUtilitarianSmallFlat()
            let currentBrewery = UserDefaults.standard.string(forKey: "NearbyBreweryForComplication") ?? "MN Breweries"
            if currentBrewery != "MN Breweries" {
                utilitarianSmall.textProvider = CLKSimpleTextProvider(text: "🍺👍🏻")
            } else {
                utilitarianSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            }
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianSmall)
            handler(timelineEntry)
        case .utilitarianLarge:
            let utilitarianLarge = CLKComplicationTemplateUtilitarianLargeFlat()
            let currentBrewery = UserDefaults.standard.string(forKey: "NearbyBreweryForComplication") ?? "MN Breweries"
            utilitarianLarge.textProvider = CLKSimpleTextProvider(text: currentBrewery)
            let timelineEntry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: utilitarianLarge)
            handler(timelineEntry)
        default:
            break
        }
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    // MARK: - Placeholder Templates
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        
        switch complication.family {
        case .modularSmall:
            let modularSmall = CLKComplicationTemplateModularSmallSimpleText()
            modularSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            handler(modularSmall)
        case .modularLarge:
            let modularLarge = CLKComplicationTemplateModularLargeStandardBody()
            modularLarge.headerTextProvider = CLKSimpleTextProvider(text: "MN Craft Breweries")
            modularLarge.body1TextProvider = CLKSimpleTextProvider(text: "Enjoy Minnesota")
            modularLarge.body2TextProvider = CLKSimpleTextProvider(text: "Craft Beer")
            handler(modularLarge)
        case .utilitarianSmall:
            let utilitarianSmall = CLKComplicationTemplateUtilitarianSmallFlat()
            utilitarianSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            handler(utilitarianSmall)
        case .utilitarianLarge:
            let utilitarianLarge = CLKComplicationTemplateUtilitarianLargeFlat()
            utilitarianLarge.textProvider = CLKSimpleTextProvider(text: "MN Breweries", shortText: "Breweries")
            handler(utilitarianLarge)
        default:
            break
        }
        handler(nil)
    }
    
    
    // MARK: Watch Connectivity
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("Activation failed with error: \(error.localizedDescription)")
            return
        }
        print("Watch complication activated with state: \(activationState.rawValue)")
    }
    
    
}
