//: Playground - noun: a place where people can play

import UIKit


//let cardsTeam1 =  ["A", "Q"]
//let t2 =  ["A", "9", "A", "A", "8", "J"]
//
//func counterPoints(for teamCards: [String]) -> Int{
//    var points = 0
//
//    for card in teamCards {
//        switch card {
//        case "A":
//            points += 11
//
//        case "Q":
//            points += 3
//
//        default:
//            print("Incorect input")
//            points += 0
//        }
//
//
//    }
//    return points
//}
//
//print(counterPoints(for: cardsTeam1))



//aproximate count
//let exactTimes = 65000
//switch exactTimes {
//case 0:
//    print("no")
//case 1..<5: // има от до в кейса
//    print("a few")
//case 5..<12:
//    print("several")
//case 12:
//    print("dozen")
//case 13..<100:
//    print("dozens")
//case 100..<1000:
//    print("hundreds")
//default:
//    print("many") // не се пише break
//}


// tupple е много на брой променливи в една вкарани

//let somePoint = (2,0) // tupple
//
//switch somePoint { //суичкейсвам по тъпъла
//case (0,0):
//    print("center")
//case (_, 0):
//    print("on x axis")
//case (0, _):
//    print("on y axis")
//case (-2...2, -2...0):
//    print("close to center")
//default:
//    print("somewhere")
//}
//
//print(somePoint.0) // достъпвам нещо от тъпъла, може да слагам int, double и др.
//
//let newTupple = (x:45, y:757) // имат си имена
//print(newTupple.x) // достъпвам ги по име


//enum Planet{      //ограничаваш променливата до отделни варианти само застраховка от грешки
//    case Mercury //създавам тип на данните, в случая Planet
//    case Venus
//    case Earth
//    case Mars
//    case Jupiter
//    case Saturn
//    case Uranus
//    case Neptune
//}
//
//
//
//let planet:Planet = Planet.Venus // извиквам го по дългия начин
//let planet1 = Planet.Mars // извиквам го по късия начин
//
//
//switch planet
//{
//case .Mercury:
//    print("0.4 AU")
//case .Venus:
//    print("0.7 AU")
//case .Earth:
//    print("1.0 AU")
//case .Mars:
//    print("1.5 AU")
//case .Jupiter:
//    print("5.2 AU")
//case .Saturn:
//    print("9.5 AU")
//case .Uranus:
//    print("19.2 AU")
//case .Neptune:
//    print("30.1 AU")
//}


//enum EnumName:String
//{
//    case enumCase1 = "rawValue1"  // може да си има стойност, нарича се rawvalue
//    case enumCase2 = "rawValue2"
//    case enumCase3 = "rawValue3"
//}
//
//let neshto = EnumName.enumCase2
//print(neshto)
//
//
//var drugoNeshto: Any = "String" // тип Any може да е всичко
//print(drugoNeshto)
//drugoNeshto = 12
//print(drugoNeshto)
//
//
//switch drugoNeshto{ // разбира какъв е типа
//case is String:
//    print("tva e string")
//case is Int:
//    print("tva e Int")
//default:
//    print("ne znam")
//}



//enum Barcode
//{
//    case upc(Int,Int,Int,Int)  // това е като да си return-еш функцията
//    case QRCode(String)
//}
//
//let barcode = Barcode.QRCode("I <3 Hoi")
//
//switch barcode {
//case .QRCode(let productCode):
//    print(productCode) // први нещо, вика функция
//case .upc(let numberSystem, let manufacturer, let product, let check):
//    print(numberSystem,manufacturer,product,check)
//}


//let number = 13
//switch number {
//case 11, 13, 15, 17, 19:
//    print("More than 10")
//    fallthrough // изпълнява и следващия case без оглед какъв е
//case 1,3,5,7,9:
//    print("Odd number")
//default:
//    print("Even number or larger than 19") //ако не искам да имам дефолт случай пиша break вътре
//}
    
    









