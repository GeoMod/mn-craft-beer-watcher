//
//  ComplicationController.swift
//  MNCraftBeerWatcher WatchKit Extension
//
//  Created by Dan OLeary on 8/13/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
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
            modularSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            let timelineEntry = CLKComplicationTimelineEntry(date: Date.init(timeIntervalSinceNow: 0), complicationTemplate: modularSmall)
            handler(timelineEntry)
        case .modularLarge:
            // This is not displaying
            let modularLarge = CLKComplicationTemplateModularLargeStandardBody()
            modularLarge.headerTextProvider = CLKSimpleTextProvider(text: "MN Craft Breweries")
            modularLarge.body1TextProvider = CLKSimpleTextProvider(text: "Enjoy Minnesota")
            modularLarge.body2TextProvider = CLKSimpleTextProvider(text: "Craft Beer")
            let timelineEntry = CLKComplicationTimelineEntry(date: Date.init(timeIntervalSinceNow: 0), complicationTemplate: modularLarge)
            handler(timelineEntry)
        case .circularSmall:
            let circularSmall = CLKComplicationTemplateCircularSmallSimpleText()
            circularSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            let timelineEntry = CLKComplicationTimelineEntry(date: Date.init(timeIntervalSinceNow: 0), complicationTemplate: circularSmall)
            handler(timelineEntry)
        case .utilitarianSmall:
            let utilitarianSmall = CLKComplicationTemplateUtilitarianSmallFlat()
            utilitarianSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            let timelineEntry = CLKComplicationTimelineEntry(date: Date.init(timeIntervalSinceNow: 0), complicationTemplate: utilitarianSmall)
            handler(timelineEntry)
        case .utilitarianLarge:
            let utilitarianLarge = CLKComplicationTemplateUtilitarianLargeFlat()
            utilitarianLarge.textProvider = CLKSimpleTextProvider(text: "MN Breweries", shortText: "Breweries")
            let timelineEntry = CLKComplicationTimelineEntry(date: Date.init(timeIntervalSinceNow: 0), complicationTemplate: utilitarianLarge)
            handler(timelineEntry)
        default:
            print("Default")
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
        case .circularSmall:
            let circularSmall = CLKComplicationTemplateCircularSmallSimpleText()
            circularSmall.textProvider = CLKSimpleTextProvider(text: "MN🍺")
            handler(circularSmall)
        default:
            break
        }
        handler(nil)
    }
    
}
