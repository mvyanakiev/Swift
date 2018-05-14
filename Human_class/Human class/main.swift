//
//  main.swift
//  Human class
//
//  Created by Milko Yanakiev on 8.05.18 г..
//  Copyright © 2018 Milko Yanakiev. All rights reserved.
//

import Foundation


enum BodyMass {
    case underweight, normal, overweight, obesity
}

class Person {
    let name: String
    let age: Int
    let height: Int
    let weight: Float
    let personalIdNumber: String

    init(name: String, age: Int, height: Int, weight: Float, personalIdNumber: String) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.personalIdNumber = personalIdNumber
    }

    func bmi() {
        // Formula is: BMI = weight(kg) / height * height (m)
        let heightInMeters: Float = Float(self.height) / 100
        let bmi: Float = self.weight / pow(heightInMeters, 2)

        switch bmi {

        case ..<18.5:
            print("BMI index of \(self.name) is \(String(format: "%.2f", bmi)). Classification is \(BodyMass.underweight).")

        case 18.5...24.9:
            print("BMI index of \(self.name) is \(String(format: "%.2f", bmi)). Classification is \(BodyMass.normal).")

        case 25.0...29.9:
            print("BMI index of \(self.name) is \(String(format: "%.2f", bmi)). Classification is \(BodyMass.overweight).")

        case 30...:
            print("BMI index of \(self.name) is \(String(format: "%.2f", bmi)). Classification is \(BodyMass.obesity).")

        default:
            print("Something goes wrong with you! BMI = \(bmi)")

        }
    }
}

class Student: Person {
    let marks: [Int]

    init(name: String, age: Int, height: Int, weight: Float, personalIdNumber: String, marks: [Int]) {
        self.marks = marks
        super.init(name: name, age: age, height: height, weight: weight, personalIdNumber: personalIdNumber)
    }

    func averageGrade() -> Float {
        if self.marks.count == 0 {
            return 0
        } else {
            let average: Float = Float(self.marks.reduce(0, +)) / Float(self.marks.count)
            return average
        }
    }
}

func compareStudents(student1: Student, student2: Student) -> Student {

    if student1.averageGrade() >= student2.averageGrade() {
        return student1
    } else {
        return student2
    }
}


let peter = Person(name: "Peter", age: 41, height: 170, weight: 68, personalIdNumber: "98732645")

let ivan = Student(name: "Ivan", age: 23, height: 176, weight: 76, personalIdNumber: "786543", marks: [5, 3, 4, 5])
let john = Student(name: "John", age: 22, height: 185, weight: 87, personalIdNumber: "876543", marks: [2, 4, 5, 4])


// BMI calculator test:
peter.bmi()


// Students compare test:
print("Better student is \(compareStudents(student1: ivan, student2: john).name), \(compareStudents(student1: ivan, student2: john).age) years old.")





