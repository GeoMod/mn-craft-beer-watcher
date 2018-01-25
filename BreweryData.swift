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
    let url: URL
}


let breweries = [
    BreweryData(breweryName: "10K Brewing", location: "Anoka", latLong: CLLocation(latitude: 45.19832746229452, longitude: -93.38953971862793), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "https://www.10kbrew.com")!),
    BreweryData(breweryName: "56 Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 45.0236809, longitude: -93.27223859999998), sun: "11a-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "https://www.56brewing.com/")!),
    BreweryData(breweryName: "612 Brew", location: "Minneapolis", latLong: CLLocation(latitude: 44.998902155805844, longitude: -93.2468569278717), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12a", sat: "12p-12a", url: URL(string: "https://612brew.com")!),
    BreweryData(breweryName: "Able Seedhouse", location: "Minneapolis", latLong: CLLocation(latitude: 44.998966641683346, longitude: -93.25122892856598), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://ablebeer.com/")!),
    BreweryData(breweryName: "Angry Inch", location: "Lakeville", latLong: CLLocation(latitude: 44.647636, longitude: -93.242677), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "2p-10p", thur: "2p-10p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "https://www.angryinchbrewing.com")!),
    BreweryData(breweryName: "Alloy Brewing", location: "Coon Rapids", latLong: CLLocation(latitude: 45.169803, longitude:  -93.336746), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-11p", url: URL(string: "https://www.alloybrewingcompany.com")!),
    BreweryData(breweryName: "August Schell", location: "New Ulm", latLong: CLLocation(latitude: 44.289622, longitude: -94.448947), sun: "12p-5p", mon: "12p-5p", tue: "12p-5p", wed: "12p-5p", thur: "12p-5p", fri: "12p-5p", sat: "11p-5p", url: URL(string: "https://schellsbrewery.com")!),
    BreweryData(breweryName: "Bad Habit", location: "St. Joseph", latLong: CLLocation(latitude: 45.565217, longitude: -94.317130), sun: "1p-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", url: URL(string: "http://www.badhabitbeer.com")!),
    BreweryData(breweryName: "Bad Weather Brewing", location: "St. Paul", latLong: CLLocation(latitude: 44.938571, longitude: -93.109974), sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", url: URL(string: "https://www.badweatherbrewery.com")!),
    BreweryData(breweryName: "Badger Hill Brewing", location: "Shakopee", latLong: CLLocation(latitude: 44.794053, longitude: -93.460709), sun: "11:30a-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://www.badgerhillbrewing.com")!),
    BreweryData(breweryName: "Bald Man", location: "Eagan", latLong: CLLocation(latitude: 44.819533, longitude: -93.2110480), sun: "11a-8p", mon: "Closed", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "11a-12a", sat: "11a-12a", url: URL(string: "http://baldmanbrewing.com")!),
    BreweryData(breweryName: "Bang Brewing", location: "St. Paul", latLong: CLLocation(latitude: 44.970473, longitude: -93.192537), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-8p", fri: "4p-10p", sat: "2p-10p", url: URL(string: "https://bangbrewing.com")!),
    BreweryData(breweryName: "Bank Brewing", location: "Hendricks", latLong: CLLocation(latitude: 44.505963, longitude: -96.425594), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "4p-Close", sat: "3p-Close", url: URL(string: "http://www.bankbrewing.com")!),
    BreweryData(breweryName: "Barley John's", location: "New Brighton", latLong: CLLocation(latitude: 45.036019, longitude: -93.197994), sun: "10a-4p", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", url: URL(string: "http://www.barleyjohns.com")!),
    BreweryData(breweryName: "Barrel Theory", location: "St. Paul", latLong: CLLocation(latitude: 44.950896, longitude: -93.087815), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", url: URL(string: "https://barreltheory.com")!),
    BreweryData(breweryName: "Bauhaus Brew", location: "Minneapolis", latLong: CLLocation(latitude: 45.000947, longitude: -93.244200), sun: "Closed", mon: "Closed", tue: "Closed", wed: "4p-11p", thur: "4p-11p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "http://bauhausbrewlabs.com")!),
    BreweryData(breweryName: "Beaver Island", location: "St. Cloud", latLong: CLLocation(latitude: 45.558394, longitude: -94.156472), sun: "11a-7p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-10p", sat: "12p-10p", url: URL(string: "http://www.beaverislandbrew.com")!),
    BreweryData(breweryName: "Bemidji Brewing", location: "Bemidji", latLong: CLLocation(latitude: 47.470066, longitude:  -94.884388), sun: "12p-7p", mon: "Closed", tue: "Closed", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://bemidjibeer.com")!),
    BreweryData(breweryName: "Bent Brewstillery", location: "Roseville", latLong: CLLocation(latitude: 45.024532, longitude: -93.173723), sun: "12p-9p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2:30p-12p", sat: "12p-12a", url: URL(string: "http://www.bentbrewstillery.com")!),
    BreweryData(breweryName: "Bent Paddle", location: "Duluth", latLong: CLLocation(latitude: 46.767688, longitude: -92.121918), sun: "12p-7p", mon: "Closed", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://bentpaddlebrewing.com")!),
    BreweryData(breweryName: "Bix Axe", location: "Nisswa", latLong: CLLocation(latitude: 46.519928, longitude: -94.289047), sun: "11a-9p", mon: "11a-9p", tue: "11a-9p", wed: "11a-9p", thur: "11a-9p", fri: "11a-11p", sat: "11a-10p", url: URL(string: "http://www.bigaxebrewing.com")!),
    BreweryData(breweryName: "Big Wood", location: "White Bear Lake", latLong: CLLocation(latitude: 45.085096, longitude: -93.006731), sun: "12p-6p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "1p-11p", url: URL(string: "http://bigwoodbrewery.com")!),
    BreweryData(breweryName: "Birch's Brewhose", location: "Long Lake", latLong: CLLocation(latitude: 44.985398, longitude: -93.555631), sun: "10a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "10a-Close", url: URL(string: "http://www.birchsonthelake.com")!),
    BreweryData(breweryName: "Blacklist Artisan", location: "Duluth", latLong: CLLocation(latitude: 46.788249, longitude: -92.095550), sun: "11a-1a", mon: "3p-12a", tue: "3p-12a", wed: "3p-12a", thur: "3p-12a", fri: "11a-1a", sat: "11a-1a", url: URL(string: "https://blacklistbeer.com")!),
    BreweryData(breweryName: "Boathouse", location: "Ely", latLong: CLLocation(latitude: 47.903452, longitude: -91.865235), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "http://www.boathousebrewpub.com")!),
    BreweryData(breweryName: "Boom Island", location: "Minneapolis", latLong: CLLocation(latitude: 44.999852, longitude: -93.281025), sun: "1p-6p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "1p-9p", url: URL(string: "http://boomislandbrewing.com")!),
    BreweryData(breweryName: "Brau Brothers", location: "Marshall", latLong: CLLocation(latitude: 44.436837, longitude: -95.777819), sun: "11a-9p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "http://braubeer.com")!),
    BreweryData(breweryName: "Broken Clock", location: "Minneapolis", latLong: CLLocation(latitude: 45.025588, longitude: -93.270154), sun: "11a-6p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-9p", fri: "3p-10p", sat: "11a-10p", url: URL(string: "https://brokenclockbrew.com")!),
    BreweryData(breweryName: "Burning Bros", location: "St. Paul", latLong: CLLocation(latitude: 44.958781, longitude: -93.173987), sun: "12-6p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", url: URL(string: "https://www.burnbrosbrew.com")!),
    BreweryData(breweryName: "Canal Park", location: "Duluth", latLong: CLLocation(latitude: 46.784771, longitude: -92.093932), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-12a", sat: "11a-12a", url: URL(string: "https://canalparkbrewery.com")!),
    BreweryData(breweryName: "Carmody Irish", location: "Duluth", latLong: CLLocation(latitude: 46.789897, longitude: -92.093580), sun: "11a-2a", mon: "3p-2a", tue: "3p-2a", wed: "3p-2a", thur: "3p-2a", fri: "3p-2a", sat: "11a-2a", url: URL(string: "https://www.facebook.com/CarmodyIrishPubAndBrewery/")!),
    BreweryData(breweryName: "Castle Danger", location: "Two Harbors", latLong: CLLocation(latitude: 47.019550, longitude: -91.673055), sun: "12p-9p", mon: "12p-9p", tue: "12p-9p", wed: "12p-9p", thur: "12p-9p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "https://www.castledangerbrewery.com")!),
    BreweryData(breweryName: "Clockwerks", location: "Minneapolis", latLong: CLLocation(latitude: 44.980895, longitude: -93.271640), sun: "12p-8p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12a", sat: "12p-12a", url: URL(string: "http://www.clockwerksbrewing.com")!),
    BreweryData(breweryName: "Cosmos Brewing", location: "Hugo", latLong: CLLocation(latitude: 45.152687, longitude: -92.912253), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL(string: "http://cosmosbrewing.com/21.html")!),
    BreweryData(breweryName: "Dangerous Man", location: "Minneapolis", latLong: CLLocation(latitude: 45.001056, longitude: -93.266555), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-12a", sat: "12p-12a", url: URL(string: "http://dangerousmanbrewing.com")!),
    BreweryData(breweryName: "Day Block", location: "Minneapolis", latLong: CLLocation(latitude: 44.975178, longitude: -93.252732), sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", url: URL(string: "https://www.dayblockbrewing.com")!),
    BreweryData(breweryName: "Disgruntled", location: "Perham", latLong: CLLocation(latitude: 46.590527, longitude: -95.558947), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "https://www.disgruntledbeer.com")!),
    BreweryData(breweryName: "Eastlake Craft", location: "Minneapolis", latLong: CLLocation(latitude: 44.948571, longitude: -93.260151), sun: "12p-11p", mon: "12p-11p", tue: "12p-11p", wed: "12p-11p", thur: "12p-11p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://www.eastlakemgm.com")!),
    BreweryData(breweryName: "Enki Brewing", location: "Victoria", latLong: CLLocation(latitude: 44.861266, longitude: 44.861266), sun: "12p-7p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-10p", sat: "12p-10p", url: URL(string: "http://enkibrewing.com")!),
    BreweryData(breweryName: "Excelsior", location: "Excelsior", latLong: CLLocation(latitude: 44.902333, longitude: -93.566429), sun: "12p-6p", mon: "Closed", tue: "4p-9p", wed: "4p-10p", thur: "4p-10p", fri: "12p-11p", sat: "12-11p", url: URL(string: "http://excelsiorbrew.com")!),
    BreweryData(breweryName: "F-Town Brewing", location: "Faribault", latLong: CLLocation(latitude: 44.294994, longitude: -93.266781), sun: "12p-3p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-9p", fri: "3p-10p", sat: "12p-10p", url: URL(string: "http://www.ftownbeer.com/ftown/")!),
    BreweryData(breweryName: "Fair State", location: "Minneapolis", latLong: CLLocation(latitude: 45.013618, longitude: -93.247448), sun: "12p-9p", mon: "4p-11p", tue: "4p-11p", wed: "4p-11p", thur: "4p-11p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "https://fairstate.coop")!),
    BreweryData(breweryName: "Finnegans Brew", location: "Minneapolis", latLong: CLLocation(latitude: 44.970085, longitude: -93.265828), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL(string: "https://finnegans.org")!),
    BreweryData(breweryName: "Fitger's", location: "Duluth", latLong: CLLocation(latitude: 46.792418, longitude: -92.090448), sun: "11a-Close", mon: "11a-Close", tue: "11a-Close", wed: "11a-Close", thur: "11a-Close", fri: "11a-Close", sat: "11a-Close", url: URL(string: "https://fitgersbrewhouse.com")!),
    BreweryData(breweryName: "Flat Earth", location: "St. Paul", latLong: CLLocation(latitude: 44.962767, longitude: -93.071162), sun: "12p-6:30p", mon: "Closed", tue: "3:30p-9:30p", wed: "3:30p-8p", thur: "3:30p-10p", fri: "3:30p-11p", sat: "12p-11p", url: URL(string: "http://www.flatearthbrewing.com")!),
    BreweryData(breweryName: "Forager Brewery", location: "Rochester", latLong: CLLocation(latitude: 44.029562, longitude: -92.477656), sun: "10a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "https://foragerbrewery.com")!),
    BreweryData(breweryName: "Foxhole", location: "Wilmar", latLong: CLLocation(latitude: 45.120706, longitude: -95.047372), sun: "1p-4p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "3p-10p", sat: "2p-10p", url: URL(string: "https://www.foxholebrewhouse.com")!),
    BreweryData(breweryName: "Fulton Beer", location: "Minneapolis", latLong: CLLocation(latitude: 44.984914, longitude: -93.278656), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "11a-10p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "http://www.fultonbeer.com")!),
    BreweryData(breweryName: "Goat Ridge", location: "New London", latLong: CLLocation(latitude: 45.301113, longitude: -94.944516), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "3p-9p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "https://www.goatridgebrewing.com")!),
    BreweryData(breweryName: "Grand Rounds", location: "Rochester", latLong: CLLocation(latitude: 44.020302, longitude: -92.463152), sun: "4p-8p", mon: "11p-10p", tue: "11p-10p", wed: "11p-10p", thur: "11p-12a", fri: "11p-12a", sat: "11p-12a", url: URL(string: "https://grandroundsbrewing.com")!),
    BreweryData(breweryName: "Great Waters", location: "St. Paul", latLong: CLLocation(latitude: 44.946740, longitude: -93.096097), sun: "11a-2a", mon: "11a-2a", tue: "11a-2a", wed: "11a-2a", thur: "11a-2a", fri: "11a-2a", sat: "11a-2a", url: URL(string: "http://greatwatersbc.com")!),
    BreweryData(breweryName: "Gull Dam", location: "Nisswa", latLong: CLLocation(latitude: 46.497667, longitude: -94.297032), sun: "12p-5p", mon: "Closed", tue: "Closed", wed: "12p-10p", thur: "12p-10p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "http://gulldambrewing.com")!),
    BreweryData(breweryName: "Gun Flint", location: "Grand Marais", latLong: CLLocation(latitude: 47.749400, longitude: -90.334957), sun: "11a-1a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-1a", sat: "11a-1a", url: URL(string: "http://www.gunflinttavern.com")!),
    BreweryData(breweryName: "Hammerheart", location: "Lino Lakes", latLong: CLLocation(latitude: 45.189003, longitude: -93.106505), sun: "12p-8p", mon: "Closed", tue: "2p-10p", wed: "2p-10p", thur: "2p-10p", fri: "2p-10p", sat: "2p-10p", url: URL(string: "http://hammerheartbrewing.com")!),
    BreweryData(breweryName: "Hayes' Public House", location: "Buffalo", latLong: CLLocation(latitude: 45.170585, longitude: -93.874256), sun: "2p-7p", mon: "Closed", tue: "Closed", wed: "5p-10p", thur: "5p-10p", fri: "3p-10p", sat: "3p-10p", url: URL(string: "http://hayespublichouse.com")!),
    BreweryData(breweryName: "Headflyer", location: "Minneapolis", latLong: CLLocation(latitude: 44.991699, longitude: -93.242915), sun: "12p-9p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "http://headflyerbrewing.com")!),
    BreweryData(breweryName: "Hoops Brewing", location: "Duluth", latLong: CLLocation(latitude: 46.783510, longitude: -92.095574), sun: "11a-12a", mon: "11a-12a", tue: "11a-12a", wed: "11a-12a", thur: "11a-12a", fri: "11a-12a", sat: "11a-12a", url: URL(string: "https://hoopsbrewing.com")!),
    BreweryData(breweryName: "Imminent", location: "Northfield", latLong: CLLocation(latitude: 44.454182, longitude: -93.158891), sun: "12p-9p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-11p", fri: "4p-11p", sat: "12p-11p", url: URL(string: "http://www.imminentbrewing.com")!),
    BreweryData(breweryName: "Inbound BrewCo", location: "Minneapolis", latLong: CLLocation(latitude: 44.985587, longitude: -93.281217), sun: "11a-12a", mon: "12p-12a", tue: "12p-12a", wed: "12p-12a", thur: "12p-12a", fri: "12p-12a", sat: "11a-12a", url: URL(string: "http://inboundbrew.co")!),
    BreweryData(breweryName: "Indeed Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 45.003401, longitude: -93.250898), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "3p-11p", thur: "3p-11P", fri: "12p-11p", sat: "12p-11p", url: URL(string: "http://www.indeedbrewing.com")!),
    BreweryData(breweryName: "Insight Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 44.991965, longitude: -93.212224), sun: "12p-11p", mon: "3p-11p", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "3p-12a", sat: "12p-12a", url: URL(string: "http://www.insightbrewing.com")!),
    BreweryData(breweryName: "Island City", location: "Winona", latLong: CLLocation(latitude: 44.053641, longitude: -91.633926), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "http://islandcitybrew.com")!),
    BreweryData(breweryName: "Jack Pine", location: "Baxter", latLong: CLLocation(latitude: 46.377701, longitude: -94.252239), sun: "12p-10p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "2p-10p", fri: "12p-11p", sat: "!2p-11p", url: URL(string: "http://www.jackpinebrewery.com")!),
    BreweryData(breweryName: "Joseph Wolf", location: "Stillwater", latLong: CLLocation(latitude: 45.057347, longitude: -92.806896), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL(string: "http://www.josephwolfbrewing.com")!),
    BreweryData(breweryName: "Junkyard", location: "Moorhead", latLong: CLLocation(latitude: 46.876350, longitude: -96.756163), sun: "2p-10p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "4p-12a", sat: "!2p-12a", url: URL(string: "https://www.junkyardbeer.com")!),
    BreweryData(breweryName: "Kinney Creek", location: "Rochester", latLong: CLLocation(latitude: 44.031053, longitude: -92.477647), sun: "12p-10p", mon: "12p-10p", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "http://www.kinneycreekbrewery.com")!),
    BreweryData(breweryName: "Lake Monster", location: "St. Paul", latLong: CLLocation(latitude: 44.957780, longitude: -93.190164), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "http://www.lakemonsterbrewing.com")!),
    BreweryData(breweryName: "Lakes&Legends", location: "Minneapolis", latLong: CLLocation(latitude: 44.968937, longitude: -93.279782), sun: "12p-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-12p", sat: "12p-12a", url: URL(string: "http://lakesandlegends.com")!),
    BreweryData(breweryName: "Lakeville Brewing", location: "Lakeville", latLong: CLLocation(latitude: 44.647804, longitude: -93.243358), sun: "10a-9p", mon: "3p-10p", tue: "3p-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "10a-11p", url: URL(string: "https://lakevillebrewing.com")!),
    BreweryData(breweryName: "Lift Bridge", location: "Stillwater", latLong: CLLocation(latitude: 45.039258, longitude: -92.831453), sun: "12p-6p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "http://www.liftbridgebrewery.com")!),
    BreweryData(breweryName: "LTD Brewing", location: "Hopkins", latLong: CLLocation(latitude: 44.924769, longitude: -93.409480), sun: "12p-10p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "http://www.ltdbrewing.com")!),
    BreweryData(breweryName: "LTS Brewing", location: "Rochester", latLong: CLLocation(latitude: 44.044716, longitude: -92.510148), sun: "11a-10p", mon: "3p-10p", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-11p", sat: "11a-11p", url: URL(string: "http://www.ltsbrewing.com")!),
    BreweryData(breweryName: "Lupine", location: "Delano", latLong: CLLocation(latitude: 45.042786, longitude: -93.788719), sun: "1p-6p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "4p-11p", sat: "1p-11p", url: URL(string: "http://lupinebrewing.com")!),
    BreweryData(breweryName: "Lupulin", location: "Big Lake", latLong: CLLocation(latitude: 45.331635, longitude: -93.738516), sun: "11a-8p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-10p", fri: "1p-11p", sat: "12p-11p", url: URL(string: "https://www.lupulinbrewing.com")!),
    BreweryData(breweryName: "Lynlake", location: "Minneapolis", latLong: CLLocation(latitude: 44.948908, longitude: -93.287835), sun: "12p-10p", mon: "5p-11p", tue: "5p-11p", wed: "5p-11p", thur: "5p-11p", fri: "2p-1a", sat: "12p-1a", url: URL(string: "http://www.lynlakebrewery.com")!),
    BreweryData(breweryName: "Mankato", location: "Mankato", latLong: CLLocation(latitude: 44.182303, longitude: -94.013670), sun: "12p-6p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "12p-9p", url: URL(string: "http://mankatobrewery.com")!),
    BreweryData(breweryName: "Maple Island", location: "Stillwater", latLong: CLLocation(latitude: 45.058122, longitude: -92.805416), sun: "12p-8p", mon: "12p-8p", tue: "12p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "http://mapleislandbrewing.com")!),
    BreweryData(breweryName: "Town Hall", location: "Minneapolis", latLong: CLLocation(latitude: 44.973385, longitude: -93.247335), sun: "11a-12a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-2a", fri: "11a-2a", sat: "11a-2a", url: URL(string: "http://www.townhallbrewery.com")!),
    BreweryData(breweryName: "Modist", location: "Minneapolis", latLong: CLLocation(latitude: 44.985237, longitude: -93.275979), sun: "12p-6p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "http://modistbrewing.com")!),
    BreweryData(breweryName: "Montgomery", location: "Montgomery", latLong: CLLocation(latitude: 44.441231, longitude: -93.582372), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "4p-9p", thur: "4p-9p", fri: "4p-9p", sat: "12p-9p", url: URL(string: "http://www.montgomerybrewing.com")!),
    BreweryData(breweryName: "Moose Lake", location: "Moose Lake", latLong: CLLocation(latitude: 46.447550, longitude: -92.767315), sun: "11a-5p", mon: "12p-9p", tue: "12p-9p", wed: "12p-9p", thur: "12p-9p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "http://www.mooselakebrewing.com")!),
    BreweryData(breweryName: "Northbound", location: "Minneapolis", latLong: CLLocation(latitude: 44.934239, longitude: -93.232941), sun: "10a-1a", mon: "11a-1a", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-2a", sat: "11a-2a", url: URL(string: "http://northboundbrewpub.com")!),
    BreweryData(breweryName: "Northgate Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 44.998325, longitude: -93.220656), sun: "12p-8p", mon: "Closed", tue: "Closed", wed: "4p-10p", thur: "4p-10p", fri: "3p-12a", sat: "12p-12a", url: URL(string: "http://www.northgatebrew.com")!),
    BreweryData(breweryName: "Nutmeg Burnsville", location: "Burnsville", latLong: CLLocation(latitude: 44.745770, longitude: -93.303500), sun: "11a-10p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "http://nutmegbrewhouse.com")!),
    BreweryData(breweryName: "Nutmeg Arden Hills", location: "Arden Hills", latLong: CLLocation(latitude: 45.051868, longitude: -93.148811), sun: "11a-10p", mon: "11a-10p", tue: "11a-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "http://nutmegbrewhouse.com")!),
    BreweryData(breweryName: "Omni", location: "Maple Grove", latLong: CLLocation(latitude: 45.126473, longitude: -93.424548), sun: "12p-10p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "https://www.omnibrewing.com")!),
    BreweryData(breweryName: "Portage", location: "Walker", latLong: CLLocation(latitude: 47.101046, longitude: -94.581324), sun: "12p-5p", mon: "12p-5p", tue: "Closed", wed: "2p-9p", thur: "2p-9p", fri: "2p-9p", sat: "12p-9p", url: URL(string: "https://portagebeer.com")!),
    BreweryData(breweryName: "Pryes", location: "Minneapolis", latLong: CLLocation(latitude: 44.993557, longitude: -93.276071), sun: "11a-9p", mon: "Closed", tue: "Closed", wed: "4p-10", thur: "4p-11p", fri: "3p-12a", sat: "11a-12a", url: URL(string: "https://www.pryesbrewing.com")!),
    BreweryData(breweryName: "Reads Landing", location: "Reads Landing", latLong: CLLocation(latitude: 44.402728, longitude: -92.078286), sun: "12p-9p", mon: "Closed", tue: "Closed", wed: "11a-9p", thur: "11a-9p", fri: "11a-10p", sat: "11a-10p", url: URL(string: "https://www.rlbrewingco.com")!),
    BreweryData(breweryName: "Red Wing", location: "Red Wing", latLong: CLLocation(latitude: 44.562739, longitude: -92.546907), sun: "12p-8p", mon: "Closed", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "12p-10p", sat: "12p-10p", url: URL(string: "http://redwingbrewing.com")!),
    BreweryData(breweryName: "Revelation Ale", location: "Hallock", latLong: CLLocation(latitude: 48.774473, longitude: -96.945716), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-9p", fri: "4p-9p", sat: "4p-9p", url: URL(string: "http://www.revales.com")!),
    BreweryData(breweryName: "Rock Botton", location: "Minneapolis", latLong: CLLocation(latitude: 44.976387, longitude: -93.274921), sun: "11a-Close", mon: "11a-Close", tue: "11a-1a", wed: "11a-1a", thur: "11a-1a", fri: "11a-2p", sat: "11a-2a", url: URL(string: "https://rockbottom.com/locations/minneapolis/")!),
    BreweryData(breweryName: "Spilled Grain", location: "Annandale", latLong: CLLocation(latitude: 45.259712, longitude: -94.118578), sun: "12p-6p", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-10p", fri: "3p-11p", sat: "11a-11p", url: URL(string: "https://www.spilledgrainbrewhouse.com")!),
    /*
    BreweryData(breweryName: "Steel Toe", location: "St. Louis Park", latLong: CLLocation(latitude: 44.941331, longitude: -93.340593), sun: "12p-6p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Summit", location: "St. Paul", latLong: CLLocation(latitude: 44.914098, longitude: -93.139282), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-8p", fri: "4p-10p", sat: "12p-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Surly", location: "Minneapolis", latLong: CLLocation(latitude: 44.973282, longitude: -93.209273), sun: "11a-11p", mon: "11a-11p", tue: "11a-11p", wed: "11a-11p", thur: "11a-11p", fri: "11a-12a", sat: "11a-12a", url: URL(string: "")!),
    BreweryData(breweryName: "Take 16", location: "Luverne", latLong: CLLocation(latitude: 43.654400, longitude: -96.202758), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-7p", fri: "Closed", sat: "4p-7p", url: URL(string: "")!),
    BreweryData(breweryName: "Talking Waters", location: "Montevideo", latLong: CLLocation(latitude: 44.949104, longitude: -95.515507), sun: "Closed", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "3p-10p", sat: "12p-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Tanzenwald", location: "Northfield", latLong: CLLocation(latitude: 44.459575, longitude: -93.161813), sun: "11a-8p", mon: "Closed", tue: "3p-10p", wed: "3p-10p", thur: "3p-10p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Freehouse", location: "Minneapolis", latLong: CLLocation(latitude: 44.987493, longitude: -93.277782), sun: "6:30a-2a", mon: "6:30a-2a", tue: "6:30a-2a", wed: "6:30a-2a", thur: "6:30a-2a", fri: "6:30a-2a", sat: "6:30a-2a", url: URL(string: "")!),
    BreweryData(breweryName: "Herkimer", location: "Minneapolis", latLong: CLLocation(latitude: 44.949142, longitude: -93.287874), sun: "10a-2a", mon: "12p-2a", tue: "12p-2a", wed: "12p-2a", thur: "12p-2a", fri: "12p-2a", sat: "120a-2a", url: URL(string: "")!),
    BreweryData(breweryName: "Third Street", location: "Cold Spring", latLong: CLLocation(latitude: 45.458913, longitude: -94.429050), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "4p-8p", sat: "12p-5p", url: URL(string: "")!),
    BreweryData(breweryName: "Tin Whiskers", location: "St. Paul", latLong: CLLocation(latitude: 44.950822, longitude: -93.093018), sun: "12p-8p", mon: "12p-8p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "u4ic Brewing", location: "Belle Plaine", latLong: CLLocation(latitude: 44.609378, longitude: -93.854400), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "4p-9p", fri: "4p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Unmapped", location: "Minnetonka", latLong: CLLocation(latitude: 44.903839, longitude: -93.465248), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "3p-10p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Urban Growler", location: "St. Paul", latLong: CLLocation(latitude: 44.970423, longitude: -93.192515), sun: "11a-8p", mon: "Closed", tue: "11a-10p", wed: "11a-10p", thur: "11a-10p", fri: "11a-11p", sat: "11a-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Utepils", location: "Minneapolis", latLong: CLLocation(latitude: 44.978688, longitude: -93.311819), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "12p-10p", thur: "12p-10p", fri: "12p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Venn Brewing", location: "Minneapolis", latLong: CLLocation(latitude: 44.920194, longitude: -93.218544), sun: "12p-9p", mon: "Closed", tue: "Closed", wed: "3p-10p", thur: "3p-10p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "")!),
    BreweryData(breweryName: "Vine Park", location: "St. Paul", latLong: CLLocation(latitude: 44.922248, longitude: -93.133789), sun: "Closed", mon: "9a-5p", tue: "12p-8p", wed: "12p-8p", thur: "12p-8p", fri: "12p-9p", sat: "9a-5p", url: URL(string: "")!),
    BreweryData(breweryName: "Voyageur", location: "Grand Marais", latLong: CLLocation(latitude: 47.750200, longitude: -90.337035), sun: "11a-9p", mon: "11a-9p", tue: "11a-9p", wed: "11a-9p", thur: "11a-9p", fri: "11a-10p", sat: "11a-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Wabasha", location: "St. Paul", latLong: CLLocation(latitude: 44.933000, longitude: -93.084343), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "3p-10p", thur: "3p-11p", fri: "3p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Waconia Brewing", location: "Waconia", latLong: CLLocation(latitude: 44.850122, longitude: -93.789757), sun: "11a-9p", mon: "4p-9p", tue: "4p-9p", wed: "2p-9p", thur: "2p-9p", fri: "2p-10p", sat: "11a-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Wayzata", location: "Wayzata", latLong: CLLocation(latitude: 44.969648, longitude: -93.517466), sun: "12p-8p", mon: "4p-10p", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-12a", sat: "12p-12a", url: URL(string: "")!),
    BreweryData(breweryName: "Wicked Wort", location: "Robbinsdale", latLong: CLLocation(latitude: 45.030926, longitude: -93.338835), sun: "11:30a-9p", mon: "3p-10p", tue: "3p-11p", wed: "3p-11p", thur: "3p-11p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "")!),
    BreweryData(breweryName: "Wild Mind", location: "Minneapolis", latLong: CLLocation(latitude: 44.893139, longitude: -93.281309), sun: "12p-8p", mon: "Closed", tue: "4p-10p", wed: "4p-10p", thur: "4p-10p", fri: "2p-11p", sat: "12p-11p", url: URL(string: "")!),
    BreweryData(breweryName: "Black Stack", location: "St. Paul", latLong: CLLocation(latitude: 44.963947, longitude: -93.182632), sun: "12p-10p", mon: "4p-11p", tue: "4p-11p", wed: "4p-11p", thur: "4p-11p", fri: "12p-12a", sat: "12p-12a", url: URL(string: "")!),
    BreweryData(breweryName: "12welve Eyes", location: "St. Paul", latLong: CLLocation(latitude: 44.947100, longitude: -93.089205), sun: "12p-8p", mon: "4p-9p", tue: "4p-9p", wed: "4p-9p", thur: "4p-9p", fri: "3p-10p", sat: "12p-10p", url: URL(string: "")!),
    BreweryData(breweryName: "Oswald Brewing", location: "Blue Earth", latLong: CLLocation(latitude: 43.638219, longitude: -94.102716), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "3p-7p", fri: "3p-10p", sat: "1p-10p", url: URL(string: "")!),
    
*/

]


/* Check back on. As of 12/13/17 they were not open to the public yet.
let StackedDeck = BreweryData(breweryName: "Stacked Deck", location: "St. Paul", latitude: 44.947191, longitude: -93.094266, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL)

let Torg = BreweryData(breweryName: "Torg Brewiing", location: "Spring Lake Park", latLong: CLLocation(latitude: 45.120974, longitude: -93.262290), sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL)
 
let StCroix = BreweryData(breweryName: "St. Croix Brewing", location: "Stillwater", latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>, sun: "Closed", mon: "Closed", tue: "Closed", wed: "Closed", thur: "Closed", fri: "Closed", sat: "Closed", url: URL)

 Currently no tap room (12/6/17)
let Borealis = BreweryData(breweryName: "Borealis Fermentery", location: "Knife River", latLong: CLLocation(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>), sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, beenHere: <#T##String#>)
 P.O. Box 130 Knife River, MN 55609
 
let invictus = BreweryData(breweryName: "Invictus", location: "Blane", latLong: CLLocation(latitude: 45.161666, longitude: -93.219470), sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, beenHere: <#T##Bool#>)
 
let Spirial = BreweryData(breweryName: "Spiral Brewery", location: "Hastings", latLong: <#T##CLLocation#>, sun: <#T##String#>, mon: <#T##String#>, tue: <#T##String#>, wed: <#T##String#>, thur: <#T##String#>, fri: <#T##String#>, sat: <#T##String#>, url: URL)
 
*/

// MARK: Listing nearest brewery to user and instances for the picker.
var complicationData = String()
var nearbyBrewery = String()
var nearbyLatLong = CLLocationCoordinate2D()


// For the scrollable brewery picker.
var breweryIdentifier = 0
var currentBrewery = String()

var cityIdentifier = 0
var selectedCity = String()



