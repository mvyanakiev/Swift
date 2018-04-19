import UIKit

func fuelCons(fuel: Double, distance: Double) -> Double {
    return (fuel * 100) / distance
}


func printFuelCons(fuel: Double, distance: Double) {
    let cons: Double = fuelCons(fuel: fuel, distance: distance)
    let roundedCons = String(format: "%.2f", cons)
    print("Your consumation is \(roundedCons) liters per 100 km.")
}



func convertLitersPer100ToMpg(cons: Double) {
    let gallonUK:Double = 4.54609;
    let USgallon:Double = 3.78541178;
    let mile:Double = 1.609344;
    
    let mpgUK = ((100 * gallonUK) / (mile * cons))
    let mpgUS = ((100 * USgallon) / (mile * cons))

    print("Your consumation is \(String(format: "%.2f", mpgUK)) miles per UK gallon.")
    print("Your consumation is \(String(format: "%.2f", mpgUS)) miles per US gallon.")
}

func pricePerKm(priceForLiter: Double, cons: Double) {
}



/*

printFuelCons(fuel: 12, distance: 234)

convertLitersPer100ToMpg(cons: 5)



//func consumption(refiling:Dictionary, pricePerLiter:Double) {
//    print("begai be")
//}

//var newRecords: [String:[Double:Double]] = ["01.01.2018":[130:4]]



let records: [String:(km:Double, liter:Double)] = ["01.01.2018":(130, 4), "03.02.2018":(897, 54), "11.03.2018":(451, 25), "07.04.2018":(45, 12)]
let PricePerLiter:Double = 2.09


var sumKm:Double = 0;
var sumLiters:Double = 0;


for date in records
{
    print("On \(date.key) I refill with \(date.value.liter) liters and drive distance of \(date.value.km) km")
    sumKm = sumKm + date.value.km
    sumLiters = sumLiters + date.value.liter
}

print(sumKm)
print(sumLiters)

printFuelCons(fuel: sumLiters, distance: sumKm)


*/







struct kur{
    var loading: [String:(km:Double, liters:Double)]
    var price: Double
    
    
    func calculates() {
        
        
        for date in loading
        {
           print(date)
        }
    }


}


let myCar = kur(loading: ["01.01.2018":(130, 4), "03.02.2018":(897, 54), "11.03.2018":(451, 25), "07.04.2018":(45, 12)], price: 2.09)

myCar.calculates()


