//: Playground - noun: a place where people can play

import UIKit

//Task 01

func averageSpeed(distance: Double, time: Double) -> Double {
    let averageSpeed = distance / time
    return averageSpeed
}

func convertorMph(kmh: Double) -> Double {
    let mph = kmh * 0.621371192
    return mph
}


func convertorMs(kmh: Double) -> Double {
    let ms = kmh * 0.277777778
    return ms
}

//print(averageSpeed(distance: 371, time: 2.3))
//print(convertorMph(kmh: 161.30))
//print(convertorMs(kmh: 161.30))

// Array
var numbersOfLottery = [5,6,876,32,78,4]
print(numbersOfLottery[2])
print(numbersOfLottery.sorted().reversed()) // има значение дали е с ed накрая командата. ако е в мин. време е инстанция. сегашно време променя масива
//numbersOfLottery.sort().reverse()
let sortedNumbers = Array(numbersOfLottery.sorted().reversed()) // така се принти масива
print(sortedNumbers)

// Set - не може да се дублира
var favoriteArtists: Set<String> = ["Slayer", "Megadeth", "Preslava"]
favoriteArtists.insert("Lamb of god")
print(favoriteArtists)
//не си помни реда. ако искам да го показвам еднакво трябва да го сортирам преди това
print(favoriteArtists.sorted())
print(favoriteArtists.count)
"Slayer".hashValue //хеша е винаги еднакво число за дадени данни
// Dictionary

var places: [String:(lat:Double, lon:Double)] = ["Sofia":(42.7, 23.3), "Vienna":(48.12, 16.22), "San Francisco":
    (37.47, -122.25)]

var dictionary: [String:String] = ["road":"път", "woman":"жена"]

print(dictionary["road"]!)
print(places["Sofia"]!)
print(places["Sofia"]!.lat) // това и долното са едно и също
print(places["Sofia"]!.0)

print(places.keys)
print(places.values)

func returnManyValues(arg1: Int, arg2: String, arg3: Double) -> (String, String, String) {
    return (arg1.description, arg2.description, arg3.description) // Tupple
}


print(returnManyValues(arg1: 34, arg2:"shvd", arg3: 3.45))



// Foreach loop
for number in numbersOfLottery
{
    print("Current number \(number)")
}

for _ in 1...3 // не ни интересува стойността на индекса
{
    print("хо хо хо")
}


for index1 in 0..<3
{
    print("tra la la \(index1)")
}


//While loop


var currentHour = 14
while currentHour < 17 {
    //work hard
    currentHour+=1
    print(currentHour)
}



var a: (Int) = 0
var b: (Int) = 34

if a == 0, b > 13 // същото като a == 0 && b > 13 не се пишат скоби
{
    print("neshto")
}

//Task 02
/*
var tickets: [String:String] = ["ime":"732678", "Gosho":"98778", "JHsa":"987"]
var flights: [String: Set<String>] = ["LH1227":["765", "9878"], "SOF123":["78", "6789"]]
var checkedIn:[String: Set<String>] = [String:Set<String>]()


func checkIn(name: String) -> Bool {
    if tickets[name] != nil {
let ticket = tickets[name]!
        let flight =


    }
}

func searchFlight(for ticket:String) -> String {
    for flight in flights {
        for flightTicket in flight.value {
            if flightTicket == ticket {
                return flight.key
            }
        }
    }
    
}
*/











