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
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let sun: String
    let mon: String
    let tue: String
    let wed: String
    let thur: String
    let fri: String
    let sat: String
    var rating: String
}


let TenKBrewing = BreweryData(breweryName: "10K Brewing", location: "Anoka", latitude: 45.19832746229452, longitude: -93.38953971862793, sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "3p-11p", sat: "12p-11p", rating: "🍺")
    // 10K Location: 2005 2nd Ave, Anoka, MN 55303
    // (763) 392-4753
let FiveSix = BreweryData(breweryName: "56 Brewing", location: "Minneapolis", latitude: 45.0236809, longitude: -93.27223859999998, sun: "11a-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", rating: "🍺")
    // Location: 3055 Columbia Ave NE Suite #102 Minneapolis, MN 55418
    // (612) 404-0056
let SixOneTwo = BreweryData(breweryName: "612 Brew", location: "Minneapolis", latitude: 44.998902155805844, longitude: -93.2468569278717, sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12a", sat: "12p-12a", rating: "🍺")
let Able = BreweryData(breweryName: "Able Seedhouse", location: "Minneapolis", latitude: 44.998966641683346, longitude: -93.25122892856598, sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11p", fri: "12p-11p", sat: "12p-11p", rating: "🍺")


var allBreweries = [ TenKBrewing, FiveSix, SixOneTwo, Able ]

var breweryIdentifier   = 0
var currentBrewery      = String()
var currentRating       = String()

