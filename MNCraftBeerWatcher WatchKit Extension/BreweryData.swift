//
//  BreweryData.swift
//  MNCraftBeerWatcher
//
//  Created by Dan OLeary on 8/15/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import WatchKit


struct BreweryData {
    let breweryName: String
    let location: String
    let mon: String
    let tue: String
    let wed: String
    let thur: String
    let fri: String
    let sat: String
    let sun: String
    var rating: String
}


let TenKBrewing = BreweryData(breweryName: "10K Brewing", location: "Anoka", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", sun: "Closed", rating: "🍺")
    // 10K Location: 2005 2nd Ave, Anoka, MN 55303
    // (763) 392-4753
let FiveSix = BreweryData(breweryName: "56 Brewing", location: "Minneapolis", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", sun: "Closed", rating: "🍺")
    // Location: 3055 Columbia Ave NE Suite #102 Minneapolis, MN 55418
    // (612) 404-0056
let SixOneTwo = BreweryData(breweryName: "612 Brew", location: "Minneapolis", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", sun: "Closed", rating: "🍺")
let Able = BreweryData(breweryName: "Able Seedhouse", location: "Minneapolis", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", sun: "Closed", rating: "🍺")


var allBreweries = [ TenKBrewing, FiveSix, SixOneTwo, Able ]


var breweryIdentifier   = 0
var currentBrewery      = String()
var currentRating       = String()

