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
    var rating: String // Could also be used as "been here?"
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
let Bemidji = BreweryData(breweryName: "Bemidji Brewing", location: "Bemidji", latitude: 47.470031, longitude: -94.884894, sun: "12p-7p", mon: "Closed", tue: "Closed", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", rating: "")
    // 211 America Ave. NW Bemidji, MN 56601
    // 218-444-7011
let BentBrew = BreweryData(breweryName: "Bent Brewstillery", location: "Roseville", latitude: 45.024532, longitude: -93.173723, sun: "12p-9p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12p", sat: "12p-12a", rating: "")
    // 1744 Terrace Drive Roseville, MN 55113
    // 844-879-2368
let BentPaddle = BreweryData(breweryName: "Bent Paddle", location: "Duluth", latitude: 46.767688, longitude: -92.121918, sun: "12p-7p", mon: "Closed", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-11p", sat: "12p-11p", rating: "")
    // 1912 W. Michigan St. Duluth, MN 55806
    // 218-279-2722
let BigAxe = BreweryData(breweryName: "Bix Axe", location: "Nisswa", latitude: 46.519928, longitude: -94.289047, sun: "11a-9p", mon: "11a-9p", tue: "11a-9p", wed: "11a-9p", thur: "11a-9p", fri: "11a-11p", sat: "11a-10p", rating: "")
    // 25435 Main St. Nisswa, MN 56468
    // 218-961-2337
let BigWood = BreweryData(breweryName: "Big Wood", location: "White Bear Lake", latitude: 45.085096, longitude: -93.006731, sun: "12p-6p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", rating: "")
    // 2222 Fourth St. White Bear Lake, MN 55110
    // 612-360-2986
let Birch = BreweryData(breweryName: "Birch's Brewhose", location: "Long Lake", latitude: 44.985398, longitude: -93.555631, sun: "10a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "10a-Close", rating: "")
    // 1310 W. Wayzata Blvd. Long Lake, MN 55356
    // 952-473-7373
let Blacklist = BreweryData(breweryName: "Blacklist Artisan", location: "Duluth", latitude: 46.788249, longitude: -92.095550, sun: "11a-1a", mon: "3p-12a", tue: "3p-12a", wed: "3p-12a", thur: "3p-12a", fri: "11a-1a", sat: "11a-1a", rating: "")
    // 120 E. Superior St. Duluth, MN 55802
let Boathouse = BreweryData(breweryName: "Boathouse", location: "Ely", latitude: 47.903452, longitude: -91.865235, sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", rating: "")
    // 47 E. Sheridan St. Ely, MN 55731
    // 218-365-4301
let BoomIsland = BreweryData(breweryName: "Boom Island", location: "Minneapolis", latitude: 44.999852, longitude: -93.281025, sun: "1p-6p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "1p-9p", rating: "")
    // 2014 Washington Ave. N. Minneapolis, MN 55411
/* Currently no taproom
let Borealis = BreweryData(breweryName: "Borealis Fermentery", location: "Knife River", latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>, sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, rating: <#T##String#>)
 P.O. Box 130 Knife River, MN 55609
*/
let Brau = BreweryData(breweryName: "Brau Brothers", location: "Marshall", latitude: 44.436837, longitude: -95.777819, sun: "11a-9p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", rating: "")
    // 1010 E. Southview Drive Marshall, MN 56258
    // 507-929-2337
let BrokenClock = BreweryData(breweryName: "Brocken Clock", location: "Minneapolis", latitude: 45.025588, longitude: -93.270154, sun: "11a-6p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-9p", fri: "3p-10p", sat: "11a-10p", rating: "")
    // 3134 California St. NE, Ste. 122 Minneapolis, MN 55418
    // 612-440-4570
let BurningBros = BreweryData(breweryName: "Burning Brothers", location: "St. Paul", latitude: 44.958781, longitude: -93.173987, sun: "12-6p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", rating: "")
    // 1750 Thomas Ave. St. Paul, MN 55104
    // 651-444-8882
let CanalPark = BreweryData(breweryName: "Canal Park Brewing", location: "Duluth", latitude: 46.784771, longitude: -92.093932, sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-12a", sat: "11a-12a", rating: "")
    // 300 Canal Park Drive Duluth, MN 55802
    //  218-464-4790
let CarmodyIrish = BreweryData(breweryName: "Carmody Irish", location: "Duluth", latitude: 46.789897, longitude: -92.093580, sun: "11a-2a", mon: "3p-2a", tue: "3p-2a", wed: "3p-2a", thur: "3p-2a", fri: "3p-2a", sat: "11a-2a", rating: "")
    // 308 E Superior St Duluth, MN 55802
    // 218-740-4747
let CastleDanger = BreweryData(breweryName: "Castle Danger", location: "Two Harbors", latitude: 47.019550, longitude: -91.673055, sun: "12p-9p", mon: "12p-9p", tue: "12p-9p", wed: "12p-9p", thur: "12p-9p", fri: "12p-10p", sat: "12p-10p", rating: "")
    // 17 Seventh St. Two Harbors, MN 55616
    // 218-834-5800
let Clockwerks = BreweryData(breweryName: "Clockwerks Brewing", location: "Minneapolis", latitude: 44.980895, longitude: -93.271640, sun: "12p-8p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", rating: "")
    // 25 NORTH 4TH STREET, MINNEAPOLIS, MN, 55401
    // 612-339-9375
let Cosmos = BreweryData(breweryName: "Cosmos Brewing", location: "Hugo", latitude: 45.152687, longitude: -92.912253, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", rating: "")
let DangerousMan = BreweryData(breweryName: "Dangerous Man", location: "Minneapolis", latitude: 45.001056, longitude: -93.266555, sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-12a", sat: "12p-12a", rating: "")
    // 1300 Second St. NE Minneapolis, MN 55413
let DayBlock = BreweryData(breweryName: "Day Block Brewing", location: "Minneapolis", latitude: 44.975178, longitude: -93.252732, sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", rating: "")
    // 1105 Washington Ave. S. Minneapolis, MN 55415
    // 612-617-7793
let Disgruntled = BreweryData(breweryName: "Disgruntled Brewing", location: "Perham", latitude: 46.590527, longitude: -95.558947, sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "11a-11p", sat: "11a-11p", rating: "")
    // 735 2nd St NE Perham, MN
    // 218-346-4677
let EastLake = BreweryData(breweryName: "Eastlake Craft", location: "Minneapolis", latitude: 44.948571, longitude: -93.260151, sun: "12p-11p", mon: "12p-11p", tue: "12p-11p", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", rating: "")
    // 920 E. Lake St. #123 Minneapolis, MN 55407
    // 612-224-9713
let Enki = BreweryData(breweryName: "Enki Brewing", location: "Victoria", latitude: 44.861266, longitude: 44.861266, sun: "12p-7p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", rating: "")
    // 1495 Stieger Lake Lane Victoria, MN 55386
    // 952.300.8408
let Excelsior = BreweryData(breweryName: "Excelsior Brewing", location: "Excelsior", latitude: 44.902333, longitude: -93.566429, sun: "12p-6p", mon: "Closed", tue: "4p-9p", wed: "4p-10p", thur: "4p-10p", fri: "12p-11p", sat: "12-11p", rating: "")
    // 421 Third St. Excelsior, MN 55331
    // 952-474-7837
let FTown = BreweryData(breweryName: "F-Town Brewing", location: "Faribault", latitude: 44.294994, longitude: -93.266781, sun: "12p-3p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-9p", fri: "3p-10p", sat: "12p-10p", rating: "")
let FairState = BreweryData(breweryName: "Fair State", location: "Minneapolis", latitude: 45.013618, longitude: -93.247448, sun: "12p-9p", mon: "4p-11p", tue: "4p-11p", wed: "4p-11p", thur: "4p-11p", fri: "2p-12a", sat: "12p-12a", rating: "")
    // 2506A Central Ave. NE Minneapolis, MN 55418
    // 612.444.3209
let Finnegans = BreweryData(breweryName: "Finnegans Brew", location: "Minneapolis", latitude: 44.970085, longitude: -93.265828, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", rating: "")
    // 609 South 10th Street, Suite 102 Minneapolis, MN 55404
let Fitgers = BreweryData(breweryName: "Fitger's Brewhouse", location: "Duluth", latitude: 46.792418, longitude: -92.090448, sun: "11a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "11a-Close", rating: "")
    // 600 E. Superior St. Duluth, MN 55802
    // (218) 279-2739
let FlatEarth = BreweryData(breweryName: "Flat Earth", location: "St. Paul", latitude: 44.962767, longitude: -93.071162, sun: "12p-6:30p", mon: "Closed", tue: "3:30p-9:30p", wed: "3:30p-8p", thur: "3:30p-10p", fri: "3:30p-11p", sat: "12p-11p", rating: "")
    // 688 Minnehaha Ave. E. St. Paul, MN 55106
    // 651-698-1945
let Forager = BreweryData(breweryName: "Forager Brewery", location: "Rochester", latitude: 44.029562, longitude: -92.477656, sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", rating: "")
    // 2105 Sixth St. NW Rochester, MN 55901
    // 507-258-7490
let FoxHole = BreweryData(breweryName: "Foxhole Brewhouse", location: "Wilmar", latitude: 45.120706, longitude: -95.047372, sun: "1p-4p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "3p-10p", sat: "2p-10p", rating: "")
    // 313 Fourth St. SW Willmar, MN 56201
    // 320-441-2071
let Fulton = BreweryData(breweryName: "Fulton Beer", location: "Minneapolis", latitude: 44.984914, longitude: -93.278656, sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "11a-10p", fri: "3p-11p", sat: "12p-11p", rating: "")
    // 414 Sixth Ave. N. Minneapolis, MN 55401
    // 612-333-3208
let GoatRidge = BreweryData(breweryName: "Goat Ridge", location: "New London", latitude: 45.301113, longitude: -94.944516, sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", rating: "")
    // 17 Central Ave. W. New London, MN 56273
    // 320.354.2383
let GrandRounds = BreweryData(breweryName: "Grand Rounds", location: "Rochester", latitude: 44.020302, longitude: -92.463152, sun: "4p-8p", mon: "11p-10p", tue: "11p-10p", wed: "11p-10p", thur: "11p-12a", fri: "11p-12a", sat: "11p-12a", rating: "")
    // 4 Third St. SW Rochester, MN 55902
let GreatWaters = BreweryData(breweryName: "Great Waters", location: "St. Paul", latitude: 44.946740, longitude: -93.096097, sun: "11a-2a", mon: "11a-2a", tue: "11a-2a", wed: "11a-2a", thur: "11a-2a", fri: "11a-2a", sat: "11a-2a", rating: "")
    // 426 St. Peter St. St. Paul, MN 55102
let GullDam = BreweryData(breweryName: "Gull Dam", location: "Nisswa", latitude: 46.497667, longitude: -94.297032, sun: "12p-5p", mon: "Closed", tue: "Closed", wed: "12p-10p", thur: "12p-10p", fri: "12p-10p", sat: "12p-10p", rating: "")
    // 23836 Smiley Road Nisswa, MN 56468
    // 218-963-2739
let GunFlint = BreweryData(breweryName: "Gun Flint Brewpub", location: "Grand Marais", latitude: 47.749400, longitude: -90.334957, sun: "11a-1a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", rating: "")
    // 111 W. Wisconsin St. Grand Marais, MN 55604
    // (218) 387-1563
let Hammerheart = BreweryData(breweryName: "Hammerheart Brewing", location: "Lino Lakes", latitude: 45.189003, longitude: -93.106505, sun: "12p-8p", mon: "Closed", tue: "2p-10p", wed: "2p-10p", thur: "2p-10p", fri: "2p-10p", sat: "2p-10p", rating: "")
let Hayes = BreweryData(breweryName: "Hayes' Public House", location: "Buffalo", latitude: 45.170585, longitude: -93.874256, sun: "2p-7p", mon: "Closed", tue: "Closed", wed: "5p-10p", thur: "5p-10p", fri: "3p-10p", sat: "3p-10p", rating: "")
    // 112 First St. S. Buffalo, MN 55313
let HeadFlyer = BreweryData(breweryName: "Headflyer", location: "Minneapolis", latitude: 44.991699, longitude: -93.242915, sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", rating: "")
    // 861 E Hennepin Ave Minneapolis, MN 55414
    // 612-567-6345
let Hoops = BreweryData(breweryName: "Hoops Brewing", location: "Duluth", latitude: 46.783510, longitude: -92.095574, sun: "11a-12a", mon: "11a-12a", tue: "11a-12a", wed: "11a-12a", thur: "11a-12a", fri: "11a-12a", sat: "11a-12a", rating: "")
    // 325 Lake Ave. South, #110 Duluth, MN 55802
let Imminent = BreweryData(breweryName: "Imminent Brewing", location: "Northfield", latitude: 44.454182, longitude: -93.158891, sun: "11a-8p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-11p", fri: "3p-11p", sat: "11a-11p", rating: "")
    // 519 Division St. S., Unit 2 Northfield, MN 55057
let Inbound = BreweryData(breweryName: "Inbound BrewCo", location: "Minneapolis", latitude: 44.985587, longitude: -93.281217, sun: "11a-12a", mon: "12p-12a", tue: "12p-12a", wed: "12p-12a", thur: "12p-12a", fri: "12p-12a", sat: "11a-12a", rating: "")
    // 701 N. Fifth St. Minneapolis, MN 55401
    // (612) 615-8243
let Indeed = BreweryData(breweryName: "Indeed Brewing", location: "Minneapolis", latitude: 45.003401, longitude: -93.250898, sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11P", fri: "12p-11p", sat: "12p-11p", rating: "")
    // 711 15th Ave. NE Minneapolis, MN 55413
    // 612-843-5090
let Insight = BreweryData(breweryName: "Insight Brewing", location: "Minneapolis", latitude: 44.991965, longitude: -93.212224, sun: "12p-11p", mon: "3p-11p", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "3p-12a", sat: "12p-12a", rating: "")
    // 2821 E. Hennepin Ave. Minneapolis, MN 55413
    // (612) 722-7222
let IslandCity = BreweryData(breweryName: "Island City", location: "Winona", latitude: 44.053641, longitude: -91.633926, sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", rating: "")
    // 65 E Front Street Winona, MN 55987


// Update from here


var allBreweries = [ TenKBrewing, FiveSix, SixOneTwo, Able, Alloy, Shell, BadHabit, BadWeather, BadgerHill, BaldMan, Bang, Bank, BarleyJohns, BarrelTheory, Bauhaus, BeaverIsland, Bemidji, BentBrew, BentPaddle, BigAxe, BigWood, Birch, Blacklist, Boathouse, BoomIsland, Brau, BrokenClock, BurningBros, CanalPark, CarmodyIrish, CastleDanger, Clockwerks, Cosmos, DangerousMan, DayBlock, Disgruntled, EastLake, Enki, Excelsior, FTown, FairState, Finnegans, Fitgers, FlatEarth, Forager, FoxHole, Fulton, GoatRidge, GrandRounds, GreatWaters, GullDam, GunFlint, Hammerheart, Hayes, HeadFlyer, Hoops, Imminent, Inbound, Indeed, Insight, IslandCity ]

var breweryIdentifier = 0
var currentBrewery = String()
var currentRating = String()

