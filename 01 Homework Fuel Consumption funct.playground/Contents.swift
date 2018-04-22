//: Playground - noun: a place where people can play

import UIKit



func Consumption(loading:[String:(km:Double, liters:Double)], price:Double) {
    
    var totalDistance:Double = 0
    var totalAmountOfFuel:Double = 0
    
    for date in loading
    {
        totalDistance += date.value.km
        totalAmountOfFuel += date.value.liters
    }
    
    var consumption = (totalAmountOfFuel * 100) / totalDistance
    
   
    func convertLitersPer100ToMpg(consumption: Double) -> Double {
        let USgallon:Double = 3.78541178;
        let mile:Double = 1.609344;
        return ((100 * USgallon) / (mile * consumption))
    }
    
    func detailsPrint () {
        
        for date in loading
        {
            let consumption = (date.value.liters * 100) / date.value.km
            print("On \(date.key) mooved distance is \(date.value.km) km, amount of fuel is \(date.value.liters) liters, consumption is \(String(format: "%.2f", consumption)) liters per 100 km.")
            
            totalDistance += date.value.km
            totalAmountOfFuel += date.value.liters
        }
        
    }
    
    func printData() {
        let valueF = convertLitersPer100ToMpg(consumption: consumption)
        let pricePerKm = totalAmountOfFuel / totalDistance * price
        
        print("Your average consumption is \(String(format: "%.2f", valueF)) miles per US gallon.")
        print("Your average consumption is \(String(format: "%.2f", consumption)) liters per 100 km.")
        print("Your average price for 1 km is \(String(format: "%.2f", pricePerKm)) lv.")
        detailsPrint()
    }
    
    printData()
}

let fuelData:[String:(km:Double, liters:Double)] = [
    "01.01.2018":(130, 4),
    "03.02.2018":(897, 54),
    "11.03.2018":(451, 25),
    "07.04.2018":(45, 6)]

Consumption(loading:fuelData , price: 2.07)
