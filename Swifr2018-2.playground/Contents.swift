//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//func averageSpeed(distance: Double, time: Double) -> Double {
//    let averageSpeed = distance / time
//    return averageSpeed
//}
//
//print(averageSpeed(distance: 120.4, time: 1.5))
//
//func convertToMPH(from kph:Double) -> Double {
//    let speedMPH = kph * 0.621371
//    return speedMPH
//}
//
//let speedKPH = 120.0
//let speedMPH = convertToMPH(from: speedKPH)
//
//func convertToMPS(from kph: Double) -> Double{
//    let speedMPS = kph / 3.6
//    return speedMPS
//}
//
//let speedMPS = convertToMPS(from: speedKPH)

//MARK: - Task 1.3


//func printSpeed(speed: Double, unit: String) {
//    print("\(speed) \(unit)")
//}
//
//let distance = Double(371) // Double(exactly:371)!
//let time: Double = 2.3
//
//let averageSpeedKPH = averageSpeed(distance: distance, time: time)
//let averageSpeedMPH = convertToMPH(from: averageSpeedKPH)
//let averageSpeedMPS = convertToMPS(from: averageSpeedKPH)

//print(averageSpeedKPH, averageSpeedMPH, averageSpeedMPS)
//printSpeed(speed: averageSpeedKPH, unit: "km/h")

//let numbersOfLottery = [4,8,15,16,23,42]
//print(numbersOfLottery)

//var invitedGuests = ["Tom", "Janna", "Alex", "Martin"]
//print(invitedGuests[2])
//invitedGuests.append("Brian")
//invitedGuests.remove(at: 3)
//invitedGuests.index(of: "Janna")
//invitedGuests.removeAll()
//invitedGuests.isEmpty
//invitedGuests.count
//let reversedArray = Array(invitedGuests.sorted().reversed())
//print(reversedArray)

//var favoriteArtists: Set<String> = ["Slayer", "Megadeth", "Preslava"]
//favoriteArtists.insert("Lamb of god")
//favoriteArtists.insert("Artery")
//favoriteArtists.insert("Slayer")
//print(favoriteArtists.count)
//"Slayer".hashValue
//"Slayer1".hashValue


//var myDictionary: [String:String] = ["road":"път", "women":"жена"]
//
//print(myDictionary["road"])
//myDictionary.count


////Implementation with Structure
//struct Coordinates {
//    var lat: Double
//    var lon: Double
//}
//
//let cities: [String:Coordinates] = ["Sofia":Coordinates(lat: 43.22, lon: 20.12), "London":Coordinates(lat: 43.22, lon: 0.0)]
//print(cities["Sofia"]!.lat)


////Implementation with tupple

//let cities: [String: (lat: Double, lon:Double)] = ["Sofia":(43.22,20.12), "London":(43.22,0.0)]
//
//print(cities["Sofia"]!.lat)


//func returnTupple(arg1: Int, arg2: String, arg3: Double) -> (item0: String, item1: String, item2: String){
//    return (arg1.description, arg2.description, arg3.description)
//}
//
//let myTupple = returnTupple(arg1: 5, arg2: "6", arg3: 7.11)
//print(myTupple.item0)

// for (int i = 1, i <= 5; i++) == for i in 1...5
// for (int i = 0, i < 5; i++) == for i in 0..<5
//for _ in 0..<5
//{
//    print("Няма да говоря повече по време на занятие")
//}

//var animals:[String: Int] = ["Spider":8, "Fly":6, "Horse":4, "Fiki":0]
//for anAnimal in animals
//{
//    print("\(anAnimal.key) has \(anAnimal.value) legs")
//}



//var currentHour = 9
//while currentHour < 17
//{
//    currentHour += 1
//}
//print(currentHour)

//func checkAge(age:Int) -> String
//{
//    if age >= 0, age < 14{
//        return "Child"
//    } else if age >= 14, age < 18 {
//        return "Minor"
//    } else if age >= 18 {
//        return "Adult"
//    } else {
//        return "Invalid input"
//    }
//}

// '&&' ; ',' - AND
// '||' - OR
// '!=' - NOT
// '!' - Inversion
// '^' - XOR




var tickets: [String:String] = ["John":"1000", "Mike":"1001", "Gabriell":"1002", "George":"1003"] // format is (name : ticket number)
var flights:[String:Set<String>] = ["LH1227":["1001", "1003"], "LH1237":["1000", "1002"]]
var checkedIn:[String:Set<String>] = [String:Set<String>]()

func checkIn(name: String) -> Bool {
    let ticket = getTicketNumber(for: name)
    if ticket.count > 0 {
        let flight = searchFlight(for: ticket)
        if flight.count > 0 {
            if checkedIn[flight] != nil {
                checkedIn[flight]!.insert(ticket)
            } else {
                checkedIn[flight] = [ticket]
            }
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

func getTicketNumber(for name: String) -> String {
    if tickets[name] != nil {
        return tickets[name]!
    } else {
        return ""
    }
}

func getPerson(for ticket: String) -> String {
    for aTicket in tickets {
        if aTicket.value == ticket {
            return aTicket.key
        }
    }
    return ""
}

func searchFlight(for ticket:String) -> String{
    for flight in flights {
        for flightTicket in flight.value {
            if flightTicket == ticket {
                return flight.key
            }
        }
    }
    return ""
}

func printCheckedInPeople(for airplane: String) {
    if checkedIn[airplane] != nil {
        for ticket in checkedIn[airplane]! {
            print(getPerson(for: ticket))
        }
    }
}

func printNumberOfNotTakenTickets(){
    var numberOfTickets = tickets.count
    for flight in checkedIn {
        numberOfTickets -= flight.value.count
    }
    print("Not taken tickets = \(numberOfTickets)")
}


let _ = checkIn(name: "John")
let _ = checkIn(name: "Mike")

printCheckedInPeople(for: "LH1227")
printNumberOfNotTakenTickets()
