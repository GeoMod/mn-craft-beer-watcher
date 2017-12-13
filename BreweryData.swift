//
//  BreweryData.swift
//  MNCraftBeerWatcher
//
//  Created by Dan OLeary on 8/15/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import WatchKit

// Introducing a lot of retain cycles with the use of the struct here. class will be more efficient.
struct BreweryData {
    let breweryName: String
    let location: String
    let latLong: CLLocation
    let sun: String
    let mon: String
    let tue: String
    let wed: String
    let thur: String
    let fri: String
    let sat: String
    var beenHere: Bool
}


let TenKBrewing = BreweryData(breweryName: "10K Brewing", location: "Anoka", latLong: CLLocation(latitude: 45.19832746229452, longitude: -93.38953971862793), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "3p-11p", sat: "12p-11p", beenHere: false )
    // 10K Location: 2005 2nd Ave, Anoka, MN 55303
    // (763) 392-4753
let FiveSix = BreweryData(breweryName: "56 Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 45.0236809, longitude: -93.27223859999998), sun: "11a-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // Location: 3055 Columbia Ave NE Suite #102 Minneapolis, MN 55418
    // (612) 404-0056
let SixOneTwo = BreweryData(breweryName: "612 Brew", location: "Minneapolis", latLong: CLLocation(latitude: 44.998902155805844, longitude: -93.2468569278717), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12a", sat: "12p-12a", beenHere: false)
let Able = BreweryData(breweryName: "Able Seedhouse", location: "Minneapolis", latLong: CLLocation(latitude: 44.998966641683346, longitude: -93.25122892856598), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
let AngryInch = BreweryData(breweryName: "Angry Inch", location: "Lakeville", latLong: CLLocation(latitude: 44.647636, longitude: -93.242677), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "2p-10p", thur: "2p-10p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 20841 Holyoke Avenue Lakeville, MN 55068
let Alloy = BreweryData(breweryName: "Alloy Brewing", location: "Coon Rapids", latLong: CLLocation(latitude: 45.169803, longitude:  -93.336746), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-11p", beenHere: false)
    // 2700 COON RAPIDS BOULEVARD NORTHWEST, COON RAPIDS, MN
    // 763-432-0939
let AugustSchell = BreweryData(breweryName: "August Schell", location: "New Ulm", latLong: CLLocation(latitude: 44.289622, longitude: -94.448947), sun: "12p-5p", mon: "12p-5p", tue: "12p-5p", wed: "12p-5p", thur: "12p-5p", fri: "12p-5p", sat: "11p-5p", beenHere: false)
    // 1860 Schell's Road New Ulm, MN 56073
    // 800-770-5020
    // Hours listed are for brewery tours. No tap room.
let BadHabit = BreweryData(breweryName: "Bad Habit", location: "St. Joseph", latLong: CLLocation(latitude: 45.565217, longitude: -94.317130), sun: "1p-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", beenHere: false)
    // 15 E MINNESOTA STST JOSEPH, MN, 56374
    // 320-271-3108
let BadWeather = BreweryData(breweryName: "Bad Weather Brewing", location: "St. Paul", latLong: CLLocation(latitude: 44.938571, longitude: -93.109974), sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", beenHere: false)
    // 414 W. Seventh St. St. Paul, MN 55102
    // 651-207-6627
let BadgerHill = BreweryData(breweryName: "Badger Hill Brewing", location: "Shakopee", latLong: CLLocation(latitude: 44.794053, longitude: -93.460709), sun: "11:30a-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 4571 Valley Industrial Blvd. S., Shakopee, MN 55379.
    // (952) 230-2739
let BaldMan = BreweryData(breweryName: "Bald Man", location: "Eagan", latLong: CLLocation(latitude: 44.819533, longitude: -93.2110480), sun: "11a-8p", mon: "Closed", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "11a-12a", sat: "11a-12a", beenHere: false)
    // 2020 Silver Bell Road #25 Eagan, MN 55122
    // (651) 600-3164
let Bang = BreweryData(breweryName: "Bang Brewing", location: "St. Paul", latLong: CLLocation(latitude: 44.970473, longitude: -93.192537), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-8p", fri: "4p-10p", sat: "2p-10p", beenHere: false)
    // 2320 Capp Road St. Paul, MN 55114
    // 651-243-2264
let Bank = BreweryData(breweryName: "Bank Brewing", location: "Hendricks", latLong: CLLocation(latitude: 44.505963, longitude: -96.425594), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "4p-Close", sat: "3p-Close", beenHere: false)
    // 200 N Main St, Hendricks, MN 56136, USA
    // 612-309-2513
let BarleyJohns = BreweryData(breweryName: "Barley John's", location: "New Brighton", latLong: CLLocation(latitude: 45.036019, longitude: -93.197994), sun: "10a-4p", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", beenHere: false)
    // 781 Old Highway 8 SW New Brighton, MN 55112
    // 651-636-4670
let BarrelTheory = BreweryData(breweryName: "Barrel Theory", location: "St. Paul", latLong: CLLocation(latitude: 44.950896, longitude: -93.087815), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", beenHere: false)
    // 248 7th Street East St. Paul, MN 55101
    // 651-600-3422
let Bauhaus = BreweryData(breweryName: "Bauhaus Brew", location: "Minneapolis", latLong: CLLocation(latitude: 45.000947, longitude: -93.244200), sun: "Closed", mon: "Closed", tue: "Closed", wed: "4p-11p", thur: "4p-11p", fri: "3p-11p", sat: "12p-11p", beenHere: false)
    // 1315 TYLER STREET NE MINNEAPOLIS, MINNESOTA 55413
    // (612) 276-6911
let BeaverIsland = BreweryData(breweryName: "Beaver Island", location: "St. Cloud", latLong: CLLocation(latitude: 45.558394, longitude: -94.156472), sun: "11a-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-10p", beenHere: false)
    // 216 6th Ave S, St Cloud, MN 56301
    // (320) 253-5907
let Bemidji = BreweryData(breweryName: "Bemidji Brewing", location: "Bemidji", latLong: CLLocation(latitude: 47.470031, longitude: -94.884894), sun: "12p-7p", mon: "Closed", tue: "Closed", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 211 America Ave. NW Bemidji, MN 56601
    // 218-444-7011
let BentBrew = BreweryData(breweryName: "Bent Brewstillery", location: "Roseville", latLong: CLLocation(latitude: 45.024532, longitude: -93.173723), sun: "12p-9p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12p", sat: "12p-12a", beenHere: false)
    // 1744 Terrace Drive Roseville, MN 55113
    // 844-879-2368
let BentPaddle = BreweryData(breweryName: "Bent Paddle", location: "Duluth", latLong: CLLocation(latitude: 46.767688, longitude: -92.121918), sun: "12p-7p", mon: "Closed", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 1912 W. Michigan St. Duluth, MN 55806
    // 218-279-2722
let BigAxe = BreweryData(breweryName: "Bix Axe", location: "Nisswa", latLong: CLLocation(latitude: 46.519928, longitude: -94.289047), sun: "11a-9p", mon: "11a-9p", tue: "11a-9p", wed: "11a-9p", thur: "11a-9p", fri: "11a-11p", sat: "11a-10p", beenHere: false)
    // 25435 Main St. Nisswa, MN 56468
    // 218-961-2337
let BigWood = BreweryData(breweryName: "Big Wood", location: "White Bear Lake", latLong: CLLocation(latitude: 45.085096, longitude: -93.006731), sun: "12p-6p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", beenHere: false)
    // 2222 Fourth St. White Bear Lake, MN 55110
    // 612-360-2986
let Birch = BreweryData(breweryName: "Birch's Brewhose", location: "Long Lake", latLong: CLLocation(latitude: 44.985398, longitude: -93.555631), sun: "10a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "10a-Close", beenHere: false)
    // 1310 W. Wayzata Blvd. Long Lake, MN 55356
    // 952-473-7373
let Blacklist = BreweryData(breweryName: "Blacklist Artisan", location: "Duluth", latLong: CLLocation(latitude: 46.788249, longitude: -92.095550), sun: "11a-1a", mon: "3p-12a", tue: "3p-12a", wed: "3p-12a", thur: "3p-12a", fri: "11a-1a", sat: "11a-1a", beenHere: false)
    // 120 E. Superior St. Duluth, MN 55802
let Boathouse = BreweryData(breweryName: "Boathouse", location: "Ely", latLong: CLLocation(latitude: 47.903452, longitude: -91.865235), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 47 E. Sheridan St. Ely, MN 55731
    // 218-365-4301
let BoomIsland = BreweryData(breweryName: "Boom Island", location: "Minneapolis", latLong: CLLocation(latitude: 44.999852, longitude: -93.281025), sun: "1p-6p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "1p-9p", beenHere: false)
    // 2014 Washington Ave. N. Minneapolis, MN 55411
let Brau = BreweryData(breweryName: "Brau Brothers", location: "Marshall", latLong: CLLocation(latitude: 44.436837, longitude: -95.777819), sun: "11a-9p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 1010 E. Southview Drive Marshall, MN 56258
    // 507-929-2337
let BrokenClock = BreweryData(breweryName: "Brocken Clock", location: "Minneapolis", latLong: CLLocation(latitude: 45.025588, longitude: -93.270154), sun: "11a-6p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-9p", fri: "3p-10p", sat: "11a-10p", beenHere: false)
    // 3134 California St. NE, Ste. 122 Minneapolis, MN 55418
    // 612-440-4570
let BurningBros = BreweryData(breweryName: "Burning Bros", location: "St. Paul", latLong: CLLocation(latitude: 44.958781, longitude: -93.173987), sun: "12-6p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", beenHere: false)
    // 1750 Thomas Ave. St. Paul, MN 55104
    // 651-444-8882
let CanalPark = BreweryData(breweryName: "Canal Park", location: "Duluth", latLong: CLLocation(latitude: 46.784771, longitude: -92.093932), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-12a", sat: "11a-12a", beenHere: false)
    // 300 Canal Park Drive Duluth, MN 55802
    //  218-464-4790
let CarmodyIrish = BreweryData(breweryName: "Carmody Irish", location: "Duluth", latLong: CLLocation(latitude: 46.789897, longitude: -92.093580), sun: "11a-2a", mon: "3p-2a", tue: "3p-2a", wed: "3p-2a", thur: "3p-2a", fri: "3p-2a", sat: "11a-2a", beenHere: false)
    // 308 E Superior St Duluth, MN 55802
    // 218-740-4747
let CastleDanger = BreweryData(breweryName: "Castle Danger", location: "Two Harbors", latLong: CLLocation(latitude: 47.019550, longitude: -91.673055), sun: "12p-9p", mon: "12p-9p", tue: "12p-9p", wed: "12p-9p", thur: "12p-9p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 17 Seventh St. Two Harbors, MN 55616
    // 218-834-5800
let Clockwerks = BreweryData(breweryName: "Clockwerks", location: "Minneapolis", latLong: CLLocation(latitude: 44.980895, longitude: -93.271640), sun: "12p-8p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", beenHere: false)
    // 25 NORTH 4TH STREET, MINNEAPOLIS, MN, 55401
    // 612-339-9375
let Cosmos = BreweryData(breweryName: "Cosmos Brewing", location: "Hugo", latLong: CLLocation(latitude: 45.152687, longitude: -92.912253), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)
let DangerousMan = BreweryData(breweryName: "Dangerous Man", location: "Minneapolis", latLong: CLLocation(latitude: 45.001056, longitude: -93.266555), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-12a", sat: "12p-12a", beenHere: false)
    // 1300 Second St. NE Minneapolis, MN 55413
let DayBlock = BreweryData(breweryName: "Day Block", location: "Minneapolis", latLong: CLLocation(latitude: 44.975178, longitude: -93.252732), sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", beenHere: false)
    // 1105 Washington Ave. S. Minneapolis, MN 55415
    // 612-617-7793
let Disgruntled = BreweryData(breweryName: "Disgruntled", location: "Perham", latLong: CLLocation(latitude: 46.590527, longitude: -95.558947), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 735 2nd St NE Perham, MN
    // 218-346-4677
let EastLake = BreweryData(breweryName: "Eastlake Craft", location: "Minneapolis", latLong: CLLocation(latitude: 44.948571, longitude: -93.260151), sun: "12p-11p", mon: "12p-11p", tue: "12p-11p", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 920 E. Lake St. #123 Minneapolis, MN 55407
    // 612-224-9713
let Enki = BreweryData(breweryName: "Enki Brewing", location: "Victoria", latLong: CLLocation(latitude: 44.861266, longitude: 44.861266), sun: "12p-7p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", beenHere: false)
    // 1495 Stieger Lake Lane Victoria, MN 55386
    // 952.300.8408
let Excelsior = BreweryData(breweryName: "Excelsior", location: "Excelsior", latLong: CLLocation(latitude: 44.902333, longitude: -93.566429), sun: "12p-6p", mon: "Closed", tue: "4p-9p", wed: "4p-10p", thur: "4p-10p", fri: "12p-11p", sat: "12-11p", beenHere: false)
    // 421 Third St. Excelsior, MN 55331
    // 952-474-7837
let FTown = BreweryData(breweryName: "F-Town Brewing", location: "Faribault", latLong: CLLocation(latitude: 44.294994, longitude: -93.266781), sun: "12p-3p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-9p", fri: "3p-10p", sat: "12p-10p", beenHere: false)
let FairState = BreweryData(breweryName: "Fair State", location: "Minneapolis", latLong: CLLocation(latitude: 45.013618, longitude: -93.247448), sun: "12p-9p", mon: "4p-11p", tue: "4p-11p", wed: "4p-11p", thur: "4p-11p", fri: "2p-12a", sat: "12p-12a", beenHere: false)
    // 2506A Central Ave. NE Minneapolis, MN 55418
    // 612.444.3209
let Finnegans = BreweryData(breweryName: "Finnegans Brew", location: "Minneapolis", latLong: CLLocation(latitude: 44.970085, longitude: -93.265828), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)
    // 609 South 10th Street, Suite 102 Minneapolis, MN 55404
let Fitgers = BreweryData(breweryName: "Fitger's", location: "Duluth", latLong: CLLocation(latitude: 46.792418, longitude: -92.090448), sun: "11a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "11a-Close", beenHere: false)
    // 600 E. Superior St. Duluth, MN 55802
    // (218) 279-2739
let FlatEarth = BreweryData(breweryName: "Flat Earth", location: "St. Paul", latLong: CLLocation(latitude: 44.962767, longitude: -93.071162), sun: "12p-6:30p", mon: "Closed", tue: "3:30p-9:30p", wed: "3:30p-8p", thur: "3:30p-10p", fri: "3:30p-11p", sat: "12p-11p", beenHere: false)
    // 688 Minnehaha Ave. E. St. Paul, MN 55106
    // 651-698-1945
let Forager = BreweryData(breweryName: "Forager Brewery", location: "Rochester", latLong: CLLocation(latitude: 44.029562, longitude: -92.477656), sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 2105 Sixth St. NW Rochester, MN 55901
    // 507-258-7490
let FoxHole = BreweryData(breweryName: "Foxhole", location: "Wilmar", latLong: CLLocation(latitude: 45.120706, longitude: -95.047372), sun: "1p-4p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "3p-10p", sat: "2p-10p", beenHere: false)
    // 313 Fourth St. SW Willmar, MN 56201
    // 320-441-2071
let Fulton = BreweryData(breweryName: "Fulton Beer", location: "Minneapolis", latLong: CLLocation(latitude: 44.984914, longitude: -93.278656), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "11a-10p", fri: "3p-11p", sat: "12p-11p", beenHere: false)
    // 414 Sixth Ave. N. Minneapolis, MN 55401
    // 612-333-3208
let GoatRidge = BreweryData(breweryName: "Goat Ridge", location: "New London", latLong: CLLocation(latitude: 45.301113, longitude: -94.944516), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 17 Central Ave. W. New London, MN 56273
    // 320.354.2383
let GrandRounds = BreweryData(breweryName: "Grand Rounds", location: "Rochester", latLong: CLLocation(latitude: 44.020302, longitude: -92.463152), sun: "4p-8p", mon: "11p-10p", tue: "11p-10p", wed: "11p-10p", thur: "11p-12a", fri: "11p-12a", sat: "11p-12a", beenHere: false)
    // 4 Third St. SW Rochester, MN 55902
let GreatWaters = BreweryData(breweryName: "Great Waters", location: "St. Paul", latLong: CLLocation(latitude: 44.946740, longitude: -93.096097), sun: "11a-2a", mon: "11a-2a", tue: "11a-2a", wed: "11a-2a", thur: "11a-2a", fri: "11a-2a", sat: "11a-2a", beenHere: false)
    // 426 St. Peter St. St. Paul, MN 55102
let GullDam = BreweryData(breweryName: "Gull Dam", location: "Nisswa", latLong: CLLocation(latitude: 46.497667, longitude: -94.297032), sun: "12p-5p", mon: "Closed", tue: "Closed", wed: "12p-10p", thur: "12p-10p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 23836 Smiley Road Nisswa, MN 56468
    // 218-963-2739
let GunFlint = BreweryData(breweryName: "Gun Flint", location: "Grand Marais", latLong: CLLocation(latitude: 47.749400, longitude: -90.334957), sun: "11a-1a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", beenHere: false)
    // 111 W. Wisconsin St. Grand Marais, MN 55604
    // (218) 387-1563
let Hammerheart = BreweryData(breweryName: "Hammerheart", location: "Lino Lakes", latLong: CLLocation(latitude: 45.189003, longitude: -93.106505), sun: "12p-8p", mon: "Closed", tue: "2p-10p", wed: "2p-10p", thur: "2p-10p", fri: "2p-10p", sat: "2p-10p", beenHere: false)
let Hayes = BreweryData(breweryName: "Hayes' Public House", location: "Buffalo", latLong: CLLocation(latitude: 45.170585, longitude: -93.874256), sun: "2p-7p", mon: "Closed", tue: "Closed", wed: "5p-10p", thur: "5p-10p", fri: "3p-10p", sat: "3p-10p", beenHere: false)
    // 112 First St. S. Buffalo, MN 55313
let HeadFlyer = BreweryData(breweryName: "Headflyer", location: "Minneapolis", latLong: CLLocation(latitude: 44.991699, longitude: -93.242915), sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", beenHere: false)
    // 861 E Hennepin Ave Minneapolis, MN 55414
    // 612-567-6345
let Hoops = BreweryData(breweryName: "Hoops Brewing", location: "Duluth", latLong: CLLocation(latitude: 46.783510, longitude: -92.095574), sun: "11a-12a", mon: "11a-12a", tue: "11a-12a", wed: "11a-12a", thur: "11a-12a", fri: "11a-12a", sat: "11a-12a", beenHere: false)
    // 325 Lake Ave. South, #110 Duluth, MN 55802
let Imminent = BreweryData(breweryName: "Imminent", location: "Northfield", latLong: CLLocation(latitude: 44.454182, longitude: -93.158891), sun: "11a-8p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-11p", fri: "3p-11p", sat: "11a-11p", beenHere: false)
    // 519 Division St. S., Unit 2 Northfield, MN 55057
let Inbound = BreweryData(breweryName: "Inbound BrewCo", location: "Minneapolis", latLong: CLLocation(latitude: 44.985587, longitude: -93.281217), sun: "11a-12a", mon: "12p-12a", tue: "12p-12a", wed: "12p-12a", thur: "12p-12a", fri: "12p-12a", sat: "11a-12a", beenHere: false)
    // 701 N. Fifth St. Minneapolis, MN 55401
    // (612) 615-8243
let Indeed = BreweryData(breweryName: "Indeed Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 45.003401, longitude: -93.250898), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11P", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 711 15th Ave. NE Minneapolis, MN 55413
    // 612-843-5090
let Insight = BreweryData(breweryName: "Insight Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 44.991965, longitude: -93.212224), sun: "12p-11p", mon: "3p-11p", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "3p-12a", sat: "12p-12a", beenHere: false)
    // 2821 E. Hennepin Ave. Minneapolis, MN 55413
    // (612) 722-7222
let IslandCity = BreweryData(breweryName: "Island City", location: "Winona", latLong: CLLocation(latitude: 44.053641, longitude: -91.633926), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 65 E Front Street Winona, MN 55987
let JackPine = BreweryData(breweryName: "Jack Pine", location: "Baxter", latLong: CLLocation(latitude: 46.377701, longitude: -94.252239), sun: "12p-10p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "2p-10p", fri: "12p-11p", sat: "!2p-11p", beenHere: false)
    // 15593 Edgewood Dr Baxter, MN 56425
    // 218-270-8072
let JosephWolf = BreweryData(breweryName: "Joseph Wolf", location: "Stillwater", latLong: CLLocation(latitude: 45.057347, longitude: -92.806896), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)
    // 222 Commercial St. #2 Stillwater, MN 55082
    // 651-300-2030
let JunkYard = BreweryData(breweryName: "Junkyard", location: "Moorhead", latLong: CLLocation(latitude: 46.876350, longitude: -96.756163), sun: "2p-10p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "4p-12a", sat: "!2p-12a", beenHere: false)
    // 1416 1st Avenue North, Moorhead, MN
    // 701-936-5545
let KinneyCreek = BreweryData(breweryName: "Kinney Creek", location: "Rochester", latLong: CLLocation(latitude: 44.031053, longitude: -92.477647), sun: "12p-10p", mon: "12p-10p", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 1016 Seventh St. NW Rochester, MN
let LakeMonster = BreweryData(breweryName: "Lake Monster", location: "St. Paul", latLong: CLLocation(latitude: 44.957780, longitude: -93.190164), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-12a", sat: "12p-12a", beenHere: false)
    // 550 Vandalia St #160 St Paul, MN 55114
    // 507-282-2739
let LakesLegends = BreweryData(breweryName: "Lakes&Legends", location: "Minneapolis", latLong: CLLocation(latitude: 44.968937, longitude: -93.279782), sun: "12p-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12p", sat: "12p-12a", beenHere: false)
    // 368 Lasalle Ave. Minneapolis, MN 55403
    // 612-999-6020
let Lakeville = BreweryData(breweryName: "Lakeville Brewing", location: "Lakeville", latLong: CLLocation(latitude: 44.647804, longitude: -93.243358), sun: "10a-9p", mon: "3p-10p", tue: "3p-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "10a-11p", beenHere: false)
    // 8790 Upper 208th St W, Lakeville, MN 55044
    // (952) 469-2739
let LiftBridge = BreweryData(breweryName: "Lift Bridge", location: "Stillwater", latLong: CLLocation(latitude: 45.039258, longitude: -92.831453), sun: "12p-6p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 1900 Tower Dr W, Stillwater MN 55082
    // (888) 430-2337
let LTD = BreweryData(breweryName: "LTD Brewing", location: "Hopkins", latLong: CLLocation(latitude: 44.924769, longitude: -93.409480), sun: "12p-10p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", beenHere: false)
    // 8 8th Ave. N. Hopkins, MN 55343
    // (952) 938-2415
let LTS = BreweryData(breweryName: "LTS Brewing", location: "Rochester", latLong: CLLocation(latitude: 44.044716, longitude: -92.510148), sun: "11a-10p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-11p", sat: "11a-11p", beenHere: false)
    // 2001 32nd Ave NW Rochester, MN 55901
    // 507-226-8280
let Lupine = BreweryData(breweryName: "Lupine", location: "Delano", latLong: CLLocation(latitude: 45.042786, longitude: -93.788719), sun: "1p-6p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-11p", sat: "1p-11p", beenHere: false)
    // 248 N. River Street Delano, MN 55328
    // 763-333-1033
let Lupulin = BreweryData(breweryName: "Lupulin", location: "Big Lake", latLong: CLLocation(latitude: 45.331635, longitude: -93.738516), sun: "11a-8p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-10p", fri: "1p-11p", sat: "12p-11p", beenHere: false)
    // 570 Humboldt Drive, Suite 107 Big Lake, MN 55309
    // 763.263.9549
let Lynlake = BreweryData(breweryName: "Lynlake", location: "Minneapolis", latLong: CLLocation(latitude: 44.948908, longitude: -93.287835), sun: "12p-10p", mon: "5p-11p", tue: "5p-11p", wed: "5p-11p", thur: "5p-11p", fri: "2p-1a", sat: "12p-1a", beenHere: false)
    // 2934 Lyndale Avenue S. Minneapolis, MN — 55408
    // (612)224-9682
let Mankato = BreweryData(breweryName: "Mankato", location: "Mankato", latLong: CLLocation(latitude: 44.182303, longitude: -94.013670), sun: "12p-6p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "12p-9p", beenHere: false)
    // 1119 Center Street North Mankato, MN 56003
let MapleIsland = BreweryData(breweryName: "Maple Island", location: "Stillwater", latLong: CLLocation(latitude: 45.058122, longitude: -92.805416), sun: "12p-8p", mon: "12p-8p", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 225 Main Street North Stillwater, MN 55082
    // 651-430-0044
let TownHall = BreweryData(breweryName: "Town Hall", location: "Minneapolis", latLong: CLLocation(latitude: 44.973385, longitude: -93.247335), sun: "11a-12a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-2a", fri: "11a-2a", sat: "11a-2a", beenHere: false)
    // 1430 Washington Ave. S, Minneapolis, MN 55454
    // 612-339-8696
let Modist = BreweryData(breweryName: "Modist", location: "Minneapolis", latLong: CLLocation(latitude: 44.985237, longitude: -93.275979), sun: "12p-6p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 505 N 3rd Street Minneapolis, MN 55401
    // 612-454-0258
let Montgomery = BreweryData(breweryName: "Montgomery", location: "Montgomery", latLong: CLLocation(latitude: 44.441231, longitude: -93.582372), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "12p-9p", beenHere: false)
    // 306 2nd St. NW Montgomery, MN 56069
let MooseLake = BreweryData(breweryName: "Moose Lake", location: "Moose Lake", latLong: CLLocation(latitude: 46.447550, longitude: -92.767315), sun: "11a-5p", mon: "12p-9p", tue: "12p-9p", wed: "12p-9p", thur: "12p-9p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 244 Lakeshore Drive Moose Lake MN 55767
let Northbound = BreweryData(breweryName: "Northbound", location: "Minneapolis", latLong: CLLocation(latitude: 44.934239, longitude: -93.232941), sun: "10a-1a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-2a", sat: "11a-2a", beenHere: false)
    // 2716 East 38th Street, Minneapolis, MN 55406
    // 612-208-1450
let Northgate = BreweryData(breweryName: "Northgate Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 44.998325, longitude: -93.220656), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "3p-12a", sat: "12p-12a", beenHere: false)
    // 783 Harding St NE Mpls, MN 55413
    // 612-354-2858
let NutmegB = BreweryData(breweryName: "Nutmeg Burnsville", location: "Burnsville", latLong: CLLocation(latitude: 44.745770, longitude: -93.303500), sun: "11a-10p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 1905 Co Rd 42 W Burnsville MN
    // 952.892.1438
let NutmegA = BreweryData(breweryName: "Nutmeg Arden Hills", location: "Arden Hills", latLong: CLLocation(latitude: 45.051868, longitude: -93.148811), sun: "11a-10p", mon: "11a-10p", tue: "11a-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 3673 Lexington Ave N Arden Hills MN
    // 651.340.8812
let Omni = BreweryData(breweryName: "Omni", location: "Maple Grove", latLong: CLLocation(latitude: 45.126473, longitude: -93.424548), sun: "12p-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 9462 Deerwood Lane Maple Grove, MN
    // (763) 424 - 6664 
let Portage = BreweryData(breweryName: "Portage", location: "Walker", latLong: CLLocation(latitude: 47.101046, longitude: -94.581324), sun: "12p-5p", mon: "12p-5p", tue: "Closed", wed: "2p-9p", thur: "2p-9p", fri: "2p-9p", sat: "12p-9p", beenHere: false)
    // 107 5th St South, Walker, MN 56484
let Pryes = BreweryData(breweryName: "Pryes", location: "Minneapolis", latLong: CLLocation(latitude: 44.993557, longitude: -93.276071), sun: "11a-9p", mon: "Closed", tue: "Closed", wed: "4p-10", thur: "4p-11p", fri: "3p-12a", sat: "11a-12a", beenHere: false)
    // 1401 West River Road N, Minneapolis, MN 55411
    // (612) 787-7937
let ReadsLanding = BreweryData(breweryName: "Reads Landing", location: "Reads Landing", latLong: CLLocation(latitude: 44.402728, longitude: -92.078286), sun: "12p-9p", mon: "Closed", tue: "Closed", wed: "11a-9p", thur: "11a-9p", fri: "11a-10p", sat: "11a-10p", beenHere: false)
    // 70555 202nd Avenue Reads Landing, MN 55968
    // 651-560-4777
let RedWing = BreweryData(breweryName: "Red Wing", location: "Red Wing", latLong: CLLocation(latitude: 44.562739, longitude: -92.546907), sun: "12p-8p", mon: "Closed", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "12p-10p", sat: "12p-10p", beenHere: false)
    // 1411 Old West Main Street 
    // 651-327-2200
let Revelation = BreweryData(breweryName: "Revelation Ale", location: "Hallock", latLong: CLLocation(latitude: 48.774473, longitude: -96.945716), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-9p", fri: "4p-9p", sat: "4p-9p", beenHere: false)
    // 146 S Atlantic Avenue, Hallock, MN 56728
let RockBotton = BreweryData(breweryName: "Rock Botton", location: "Minneapolis", latLong: CLLocation(latitude: 44.976387, longitude: -93.274921), sun: "11a-Close", mon: "11a-Close", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-2p", sat: "11a-2a", beenHere: false)
    // 800 LaSalle Plaza Minneapolis, MN 55402
let SpilledGrain = BreweryData(breweryName: "Spilled Grain", location: "Annandale", latLong: CLLocation(latitude: 45.259712, longitude: -94.118578), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-10p", fri: "3p-11p", sat: "11a-11p", beenHere: false)
    // 300 Elm St E Annandale, MN 55302
    // 320-274-1129
let SteelToe = BreweryData(breweryName: "Steel Toe", location: "St. Louis Park", latLong: CLLocation(latitude: 44.941331, longitude: -93.340593), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", beenHere: false)
    // 4848 W. 35th St. St. Louis Park, MN 55416
    // 952.955.9965
let Summit = BreweryData(breweryName: "Summit", location: "St. Paul", latLong: CLLocation(latitude: 44.914098, longitude: -93.139282), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-8p", fri: "4p-10p", sat: "12p-10p", beenHere: false)
    // 910 Montreal Circle, St. Paul, MN 55102
    // (651) 265-7800
let Surly = BreweryData(breweryName: "Surly", location: "Minneapolis", latLong: CLLocation(latitude: 44.973282, longitude: -93.209273), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-12a", sat: "11a-12a", beenHere: false)
    // 520 Malcolm Avenue SE Minneapolis
let Take16 = BreweryData(breweryName: "Take 16", location: "Luverne", latLong: CLLocation(latitude: 43.654400, longitude: -96.202758), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-7p", fri: "Closed", sat: "4p-7p", beenHere: false)
    // 509 E Main Street Luverne, MN 56156
let TalkingWaters = BreweryData(breweryName: "Talking Waters", location: "Montevideo", latLong: CLLocation(latitude: 44.949104, longitude: -95.515507), sun: "Closed", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", beenHere: false)
    // 205 S. 1st St. Montevideo, MN 56265
let Tanzenwald = BreweryData(breweryName: "Tanzenwald", location: "Northfield", latLong: CLLocation(latitude: 44.459575, longitude: -93.161813), sun: "11a-8p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    //  103 Water Street North, Northfield, MN 55057
    //  507-366-2337
let Freehouse = BreweryData(breweryName: "Freehouse", location: "Minneapolis", latLong: CLLocation(latitude: 44.987493, longitude: -93.277782), sun: "6:30a-2a", mon: "6:30a-2a", tue: "6:30a-2a", wed: "6:30a-2a", thur: "6:30a-2a", fri: "6:30a-2a", sat: "6:30a-2a", beenHere: false)
    // 701 N. Washington Ave., Ste 101 Minneapolis, MN 55401
let Herkimer = BreweryData(breweryName: "Herkimer", location: "Minneapolis", latLong: CLLocation(latitude: 44.949142, longitude: -93.287874), sun: "10a-2a", mon: "12p-2a", tue: "12p-2a", wed: "12p-2a", thur: "12p-2a", fri: "12p-2a", sat: "120a-2a", beenHere: false)
    // 2922 Lyndale Avenue South Minneapolis, MN 55408
let ThirdStreet = BreweryData(breweryName: "Third Street", location: "Cold Spring", latLong: CLLocation(latitude: 45.458913, longitude: -94.429050), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "4p-8p", sat: "12p-5p", beenHere: false)
    // 219 Red River Ave N, Cold Spring, MN 56320
    //  320.685.3690
let TinWhiskers = BreweryData(breweryName: "Tin Whiskers", location: "St. Paul", latLong: CLLocation(latitude: 44.950822, longitude: -93.093018), sun: "12p-8p", mon: "12p-8p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "12p-11p", beenHere: false)
    // 125th E 9th St. Unit 127 St. Paul, Minnesota 55101
    // (651) 330-4734
let U4ic = BreweryData(breweryName: "u4ic Brewing", location: "Belle Plaine", latLong: CLLocation(latitude: 44.609378, longitude: -93.854400), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-9p", fri: "4p-11p", sat: "12p-11p", beenHere: false)
    // 23436 Union Trail, Suite 1 Belle Plaine, Minnesota 56011
let Unmapped = BreweryData(breweryName: "Unmapped", location: "Minnetonka", latLong: CLLocation(latitude: 44.903839, longitude: -93.465248), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "3p-11p", sat: "12p-11p", beenHere: false)
    // 14625 Excelsior Boulevard Minnetonka, MN 55345
let UrbanGrowler = BreweryData(breweryName: "Urban Growler", location: "St. Paul", latLong: CLLocation(latitude: 44.970423, longitude: -93.192515), sun: "11a-8p", mon: "Closed", tue: "11a-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "11a-11p", beenHere: false)
    // 2325 Endicott St, St Paul, MN 55114
    // 651.340.5793
let Utepils = BreweryData(breweryName: "Utepils", location: "Minneapolis", latLong: CLLocation(latitude: 44.978688, longitude: -93.311819), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-11p", sat: "12p-11p", beenHere: false)
    // 225 THOMAS AVE N MINNEAPOLIS, MN 55405
    // 612-249-7800
let VinePark = BreweryData(breweryName: "Vine Park", location: "St. Paul", latLong: CLLocation(latitude: 44.922248, longitude: -93.133789), sun: "Closed", mon: "9a-5p", tue: "12p-8p", wed: "12p-8p", thur: "12p-8p", fri: "12p-9p", sat: "9a-5p", beenHere: false)
    // 1254 West 7th Street St. Paul, Minnesota 55102
    // 651.228.1355
let Voyageur = BreweryData(breweryName: "Voyageur", location: "Grand Marais", latLong: CLLocation(latitude: 47.750200, longitude: -90.337035), sun: "11a-9p", mon: "11a-9p", tue: "11a-9p", wed: "11a-9p", thur: "11a-9p", fri: "11a-10p", sat: "11a-10p", beenHere: false)
    // 233 West Highway 61, Grand Marais, MN 55604
    // 218-387-3163
let Wabasha = BreweryData(breweryName: "Wabasha", location: "St. Paul", latLong: CLLocation(latitude: 44.933000, longitude: -93.084343), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "3p-10p", thur: "3p-11p", fri: "3p-11p", sat: "12p-11p", beenHere: false)
    // 429 Wabasha Street South, St. Paul, Minnesota
let Waconia = BreweryData(breweryName: "Waconia Brewing", location: "Waconia", latLong: CLLocation(latitude: 44.850122, longitude: -93.789757), sun: "11a-9p", mon: "4p-9p", tue: "4p-9p", wed: "2p-9p", thur: "2p-9p", fri: "2p-10p", sat: "11a-10p", beenHere: false)
    // 255 Main Street West  Waconia, MN, USA
    // 612.888.2739 
let Wayzata = BreweryData(breweryName: "Wayzata", location: "Wayzata", latLong: CLLocation(latitude: 44.969648, longitude: -93.517466), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-12a", sat: "12p-12a", beenHere: false)
    // 294 Grove Ln E, Wayzata, MN 55391
    // (952) 737-1023
let Wicked = BreweryData(breweryName: "Wicked Wort", location: "Robbinsdale", latLong: CLLocation(latitude: 45.030926, longitude: -93.338835), sun: "11:30a-9p", mon: "3p-10p", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 4165 W Broadway Ave. Robbinsdale, MN 55422
    // 763-504-9977
let WildMind = BreweryData(breweryName: "Wild Mind", location: "Minneapolis", latLong: CLLocation(latitude: 44.893139, longitude: -93.281309), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-11p", sat: "12p-11p", beenHere: false)
    // 6031 PILLSBURY AVENUE SOUTH, MINNEAPOLIS MN 55419
    // 612-345-4514
let BlackStack = BreweryData(breweryName: "Black Stack", location: "St. Paul", latLong: CLLocation(latitude: 44.963947, longitude: -93.182632), sun: "12p-10p", mon: "4p-11p", tue: "4p-11p", wed: "4p-11p", thur: "4p-11p", fri: "12p-12a", sat: "12p-12a", beenHere: false)
    // 755 Prior Ave North St. Paul, MN 55104
let TwelveEyes = BreweryData(breweryName: "12welve Eyes", location: "St. Paul", latLong: CLLocation(latitude: 44.947100, longitude: -93.089205), sun: "12p-8p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "3p-10p", sat: "12p-10p", beenHere: false)
    // 141 E. 4TH ST, SUITE LL2, SAINT PAUL, MN 55101
let Oswald = BreweryData(breweryName: "Oswald Brewing", location: "Blue Earth", latLong: CLLocation(latitude: 43.638219, longitude: -94.102716), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-7p", fri: "3p-10p", sat: "1p-10p", beenHere: false)


/* Check back on. As of 12/13/17 they were not open to the public yet.
let StackedDeck = BreweryData(breweryName: "Stacked Deck", location: "St. Paul", latitude: 44.947191, longitude: -93.094266, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)

let Torg = BreweryData(breweryName: "Torg Brewiing", location: "Spring Lake Park", latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)
 
let StCroix = BreweryData(breweryName: "St. Croix Brewing", location: "Stillwater", latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", beenHere: false)

 Currently no tap room (12/6/17)
let Borealis = BreweryData(breweryName: "Borealis Fermentery", location: "Knife River", latLong: CLLocation(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>), sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, beenHere: <#T##String#>)
 P.O. Box 130 Knife River, MN 55609
 
let invictus = BreweryData(breweryName: "Invictus", location: "Blane", latLong: CLLocation(latitude: 45.161666, longitude: -93.219470), sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, beenHere: <#T##Bool#>)
 
 let Spirial = BreweryData(breweryName: "Spiral Brewery", location: "Hastings", latLong: <#T##CLLocation#>, sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, beenHere: false)
 
*/





var allBreweries = [ AngryInch, TenKBrewing, FiveSix, SixOneTwo, Able, Alloy, AugustSchell, BadHabit, BadWeather, BadgerHill, BaldMan, Bang, Bank, BarleyJohns, BarrelTheory, Bauhaus, BeaverIsland, Bemidji, BentBrew, BentPaddle, BigAxe, BigWood, Birch, Blacklist, Boathouse, BoomIsland, Brau, BrokenClock, BurningBros, CanalPark, CarmodyIrish, CastleDanger, Clockwerks, Cosmos, DangerousMan, DayBlock, Disgruntled, EastLake, Enki, Excelsior, FTown, FairState, Finnegans, Fitgers, FlatEarth, Forager, FoxHole, Fulton, GoatRidge, GrandRounds, GreatWaters, GullDam, GunFlint, Hammerheart, Hayes, HeadFlyer, Hoops, Imminent, Inbound, Indeed, Insight, IslandCity, JackPine, JosephWolf, JunkYard, KinneyCreek, LakeMonster, LakesLegends, Lakeville, LiftBridge, LTD, LTS, Lupine, Lupulin, Lynlake, Mankato, MapleIsland, TownHall, Modist, Montgomery, MooseLake, Northbound, Northgate, NutmegA, NutmegB, Omni, Portage, Pryes, ReadsLanding, RedWing, Revelation, RockBotton, SpilledGrain, SteelToe, Summit, Surly, Take16, TalkingWaters, Tanzenwald, Freehouse, Herkimer, ThirdStreet, TinWhiskers, U4ic, Unmapped, UrbanGrowler, Utepils, VinePark, Voyageur, Wabasha, Waconia, Wayzata, Wicked, WildMind, BlackStack, TwelveEyes, Oswald ]



// MARK: Listing nearest brewery to user and instances for the picker.

//var nearbyBreweryNameArray = [String]()
//var isBreweryNearby = false

// Possible deletion...
//var halfMileBrewery = false
//var oneMileBrewery = false
//var fiveMileBrewery = false
//var tenMileBrewery = false

var complicationData = String()
var nearbyBrewery = String()
var nearbyLatLong = CLLocationCoordinate2D()
// Sorts the breweries by Lat/Long for finding nearest brewewry.
//let breweriesSortedByLatLong = allBreweries.sorted(by: { $0.latitude < $1.longitude }) // 0

//var nearbyLatitude = CLLocationDegrees()
//var nearbyLongitude = CLLocationDegrees()

// For the scrollable brewery picker.
var breweryIdentifier = 0
var currentBrewery = String()





