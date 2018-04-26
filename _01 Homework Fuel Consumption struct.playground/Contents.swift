//: Playground - noun: a place where people can play

import UIKit

struct Consumption{
    var loading:[String:(km:Double, liters:Double)]
    
    
    func calc() -> Array <Double>{
        
        var result: [Double] = []
        var totalDistance:Double = 0
        var totalAmountOfFuel:Double = 0
        var detailedConsumption:String = ""
        
        for date in loading
        {
            totalDistance += date.value.km
            totalAmountOfFuel += date.value.liters
            let consumption = (date.value.liters * 100) / date.value.km
            
            detailedConsumption.append("On \(date.key) mooved distance is \(date.value.km) km, amount of fuel is \(date.value.liters) liters, consumption is \(String(format: "%.2f", consumption)) liters per 100 km.\n")
            
        }
        
        result.append(totalDistance)
        result.append(totalAmountOfFuel)
        
        return result
    }
    
    
    func addLoading(hui:Double) -> Double {
        
        print(hui)
    }
    
    
    
    
    
    
    
    func printData() {
        
        let totKm = (calc()[0])
        let totFuel = (calc()[1])
        
        
        print(totKm, totFuel)
        
    }
    
    
    
}







let fuelData:[String:(km:Double, liters:Double)] = [
    "01.01.2018":(130, 4.8),
    "03.02.2018":(897, 54),
    "11.03.2018":(451, 25),
    "07.04.2018":(45, 5)]

let fuelAdded:[String:(km:Double, liters:Double)] = [
    "20.08.2018":(450, 12)
]

let testData: Double = 11

//let bmw = Consumption(loading:fuelData , price: 2.07)


let bmw = Consumption(loading:fuelData)


bmw.printData()
bmw.addLoading(testData)







