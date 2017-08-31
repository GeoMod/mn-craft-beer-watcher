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
let Alloy = BreweryData(breweryName: "Alloy Brewing", location: "Coon Rapids", latitude: 45.169803, longitude:  -93.336746, sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-11p", rating: "🍺")
    // 2700 COON RAPIDS BOULEVARD NORTHWEST, COON RAPIDS, MN
    // 763-432-0939
let Shell = BreweryData(breweryName: "August Shell Brewing", location: "New Ulm", latitude: 44.289622, longitude: -94.448947, sun: "12p-5p", mon: "12p-5p", tue: "12p-5p", wed: "12p-5p", thur: "12p-5p", fri: "12p-5p", sat: "11p-5p", rating: "🍺")
    // 1860 Schell's Road New Ulm, MN 56073
    // 800-770-5020
    // Hours listed are for brewery tours. No tap room.
let BadHabit = BreweryData(breweryName: "Bad Habit Brewing", location: "St. Joseph", latitude: 45.565217, longitude: -94.317130, sun: "1p-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", rating: "🍺")
    // 15 E MINNESOTA STST JOSEPH, MN, 56374
    // 320-271-3108
let BadWeather = BreweryData(breweryName: "Bad Weather Brewing", location: "St. Paul", latitude: 44.938571, longitude: -93.109974, sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", rating: "🍺")
    // 414 W. Seventh St. St. Paul, MN 55102
    // 651-207-6627
let BadgerHill = BreweryData(breweryName: "Badger Hill Brewing", location: "Shakopee", latitude: 44.794053, longitude: -93.460709, sun: "11:30a-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", rating: "🍺")
    // 4571 Valley Industrial Blvd. S., Shakopee, MN 55379.
    // (952) 230-2739
let BaldMan = BreweryData(breweryName: "Bald Man Brewing", location: "Eagan", latitude: 44.819533, longitude: -93.211048, sun: "11a-8p", mon: "Closed", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "11a-12a", sat: "11a-12a", rating: "")
    // 2020 Silver Bell Road #25 Eagan, MN 55122
    // (651) 600-3164
let Bang = BreweryData(breweryName: "Bang Brewing", location: "St. Paul", latitude: 44.970473, longitude: -93.192537, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-8p", fri: "4p-10p", sat: "2p-10p", rating: "")
    // 2320 Capp Road St. Paul, MN 55114
    // 651-243-2264
let Bank = BreweryData(breweryName: "Bank Brewing", location: "Hendricks", latitude: 44.505963, longitude: -96.425594, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "4p-Close", sat: "3p-Close", rating: "")
    // 200 N Main St, Hendricks, MN 56136, USA
    // 612-309-2513
let BarleyJohns = BreweryData(breweryName: "Barley John's", location: "New Brighton", latitude: 45.036019, longitude: -93.197994, sun: "10a-4p", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", rating: "")
    // 781 Old Highway 8 SW New Brighton, MN 55112
    // 651-636-4670
let BarrelTheory = BreweryData(breweryName: "Barrel Theory", location: "St. Paul", latitude: 44.950896, longitude: -93.087815, sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", rating: "")
    // 248 7th Street East St. Paul, MN 55101
    // 651-600-3422
let Bauhaus = BreweryData(breweryName: "Bauhaus Brew Labs", location: "Minneapolis", latitude: 45.000947, longitude: -93.244200, sun: "Closed", mon: "Closed", tue: "Closed", wed: "4p-11p", thur: "4p-11p", fri: "3p-11p", sat: "12p-11p", rating: "")
    // 1315 TYLER STREET NE MINNEAPOLIS, MINNESOTA 55413
    // (612) 276-6911
let BeaverIsland = BreweryData(breweryName: "Beaver Island Brewing", location: "St. Cloud", latitude: 45.558394, longitude: -94.156472, sun: "11a-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-10p", rating: "")
    // 216 6th Ave S, St Cloud, MN 56301
    // (320) 253-5907


// Update from here



var allBreweries = [ TenKBrewing, FiveSix, SixOneTwo, Able, Alloy, Shell, BadHabit, BadWeather, BadgerHill, BaldMan, Bang, Bank, BarleyJohns, BarrelTheory, Bauhaus, BeaverIsland ]

var breweryIdentifier   = 0
var currentBrewery      = String()
var currentRating       = String()

