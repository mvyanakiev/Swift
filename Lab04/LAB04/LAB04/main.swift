//
//  main.swift
//  LAB04
//
//  Created by Milko Yanakiev on 2.05.18 г..
//  Copyright © 2018 Milko Yanakiev. All rights reserved.
//

import Foundation


/*
class Human {
    var age: Int?

    func walk() {
//make a step
    }

    func talk() {
        print("Human: Hello world")
    }
}

let pesho = Human()
pesho.age = 23
pesho.talk()
*/


//if pesho is Human {
//    print("pesho e human")
//}


// Init = constructor (може да няма ако няма Non-optional property)
// може да имаш deinit за унищожаване

/*
class MyFirstClass {
    init(var1: Int, var2: String, cons1: Int) {
        variable1 = var1
        variable2 = var2
        const1 = cons1
    }

    var variable1: Int? // Optional variable -> може и без стойност при създаване на обект от класа "?"
    var variable2: String! // Non-optional variable -> задължително е да има стойност "!"
    let const1: Int

    deinit {
        print("bye")
    }

    func printAll() {
        print(variable1!, variable2, const1)
    }
}

//едно и също е как ще създадеме инстанцията
let instance = MyFirstClass.init(var1: 6, var2: "hello", cons1: 9)
let instance2 = MyFirstClass(var1: 45, var2: "hi", cons1: 06)

instance.printAll()
instance2.printAll()






class Atm {

    static let sharedInstance = Atm(availableMoney: 8670.0)
    var money: Double

    init(availableMoney: Double) {
        self.money = availableMoney
    }

    func withdraw(moneyTeg:Double, human:Human1) {
        if moneyTeg > self.money {
            print("not enough money in atm")
        } else if moneyTeg > human.hisMoney {
            print("not enough money in account")
        } else {
            print("ok")
            self.money -= moneyTeg
            human.hisMoney += moneyTeg
        }
    }
}

class Human1 {
    var hisName:String
    var hisMoney:Double

    init(name: String, humansAvailableMoney: Double) {
        self.hisName = name
        self.hisMoney = humansAvailableMoney
    }

}

var bankomat1 = Atm(availableMoney: 12983)
var gosho = Human1(name: "Gosho", humansAvailableMoney: 48765)

print(bankomat1.money, gosho.hisMoney)
bankomat1.withdraw(moneyTeg: 1304, human: gosho)
print(bankomat1.money, gosho.hisMoney)
Atm.sharedInstance.withdraw(moneyTeg: 100, human: gosho)




class CupClass {
    var percentageFull: Double

    init(percentageFull: Double) {
        self.percentageFull = percentageFull
    }

    func fill() {
        self.percentageFull = 100
    }
}


struct CupStruct {
    var percentageFull: Double

    init(percentageFull: Double) {
        self.percentageFull = percentageFull
    }

    mutating func fill() {
        self.percentageFull = 100

    }
}


var cupClass1 = CupClass(percentageFull: 0.00)
var cupClass2 = cupClass1

var cupStruct1 = CupStruct(percentageFull: 0.00)
var cupStruct2 = cupStruct1

cupClass2.fill()
cupStruct2.fill()

print(cupClass1.percentageFull, cupStruct1.percentageFull) // класа направен така е като направиш нещо за кой да е важи за всички, структурата е индивидуално
// клас 2 е шорткът на клас 1
// при структурите всяка е за себе си, в структурата няма наследяване

*/


class Vehicle {
    let regNumber: String
    let engine: Float
    var hps: Float
    let VIN: String

    init(regNumber: String, engine: Float, hps: Float, VIN: String) {
        self.regNumber = regNumber
        self.engine = engine
        self.hps = hps
        self.VIN = VIN
    }

    func printInfo(){
        print(self.regNumber, self.VIN, self.engine, self.hps)
    }
}


class Car: Vehicle {
    let numberOfSeats: Int

    init(regNumber: String, engine: Float, hps: Float, VIN: String, numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }

   override func printInfo(){
        print(self.regNumber, self.VIN, self.engine, self.hps, self.numberOfSeats) // override с новите неща за тоя клас (брой места)
    }

}



class Motorcycle: Vehicle {
    var maxSpeed: Double

    init(regNumber: String, engine: Float, hps: Float, VIN: String, maxSpeed:Double) {
        self.maxSpeed = maxSpeed
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }

    override func printInfo(){

        super.printInfo() //принти функцията от бащата
        print(self.maxSpeed) // override с новите неща за тоя клас (max speed)
    }

}


class Truck: Vehicle {
    let maxLoad: Int

    init(regNumber: String, engine: Float, hps: Float, VIN: String, maxLoad: Int) {
        self.maxLoad = maxLoad
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }

    override func printInfo(){
        print(self.regNumber, self.VIN, self.engine, self.hps, self.maxLoad) // override с новите неща за тоя клас (номер седалки)
    }

}

//овъррайдването на функцията е полиморфизъм -> функция с едно и също име прави различни неща в различни класове

let myCar = Car(regNumber: "CA9895", engine: 1.4, hps: 69, VIN: "VFA65565", numberOfSeats: 4)
let myTruck = Truck(regNumber: "PB7654", engine: 8.0, hps: 453, VIN: "GSA76767", maxLoad: 11000)
let myMotor = Motorcycle(regNumber: "CA8789", engine: 1.0, hps: 123, VIN: "ASS9876M", maxSpeed: 120)

//myCar.printInfo()
//myMotor.printInfo()
//myTruck.printInfo()


class Policeman{
    let name: String
    let rank: String

    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }

    func checkInformation(for item:Vehicle ) { //като напишеш for става по-красиво долу като го викаш
        item.printInfo()
    }
}

let gosho = Policeman(name: "Gosho", rank: "Sergent")


gosho.checkInformation(for: myTruck) // баш полиморфизъм е това
gosho.checkInformation(for: myMotor)


