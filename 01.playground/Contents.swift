//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//print("Hello world")
//print("this neshto")

var intVariable = 7
var doubleVariable = 7.77


// let е константа, var е променлива
let a: Double = 6.6
var b = 7

var perimeter = 2 * (a + Double(b)) // => кастване към дабъл
var surface = a * Double(b)

print(perimeter, surface)

// .description e еквивалентно на .toSring
var string = "This number is " + 7.description


var string1 = "Hello" // това e string

var h = "😇" // emoji ctrl+cmd+space

// конкатенация единична, ако искаш много е с .appendING
string1.append(" ihuuu")
print(string1)

string = "This is \(b)" // стринг интерполация
print(string)

let studentName = "Gosho"
let facultyNumber = 615478
let studentAge = 21
let averageMark = 4.8765

let outputString = "Name: \(studentName), Faculty Number: \(facultyNumber), Age: \(studentAge), Average Mark: \(averageMark)"
print(outputString)


//нещо като String.Join
print(studentName, facultyNumber, studentAge, separator: " 😎 ", terminator: "\n")


// плейсхолдъри, decimal foramting
let newString = String(format: "%@, %d, %d, %0.2f", studentName, facultyNumber, studentAge, averageMark)
print(newString)






// това e Struct (като class)
struct Student{
    var name: String
    var age: Int
    var facultyNumber: String
    var averageMark: Float
    
    func printStudentAndFN() {
        let outputString2 = "\(self.name) e с факултетен номер \(self.facultyNumber)"
        print(outputString2)
    }
}

let aStudent = Student(name: "Gosho", age: 21, facultyNumber:
    "121212112", averageMark: 4.786)
print(aStudent.name)

let secondStudent = Student(name: "John", age: 23, facultyNumber: "2343", averageMark: 5.87)
print(secondStudent.name, "е на", secondStudent.age)








// функции
// указваш типовете включително и на резултата
func sum(number1: Int, number2: Int) -> Int {
    let result = number1 + number2
    return result
}

let resultOfSum = sum(number1: 33, number2: 4)
print(resultOfSum)





struct Student1{
    var name: String
    var age: Int
    var facultyNumber: String
    var averageMark: Float
}

func printStdentNameAndFacNumber(student: Student) {
    let outputString1 = "\(student.name) -> Фак. № \(student.facultyNumber)"
    print(outputString1)
}

printStdentNameAndFacNumber(student: secondStudent)

secondStudent.printStudentAndFN()










struct newStudent{
    var name: String
    var age: Int
    var facultyNumber: Int
    var maths: Double
    var english: Double
    var chemistry: Double

    func printStudentAverageGrade() -> String {
        // self е като "this" в JS
        let averageGrade = (self.maths + self.english + self.chemistry) / 3
        let formatedGrade = String(format: "%0.2f", averageGrade)
        return formatedGrade
    }
}


let student1 = newStudent(name: "Gosho", age: 23, facultyNumber: 12345, maths: 5.23, english: 5.55, chemistry: 5.67)
let student2 = newStudent(name: "Пешо", age: 20, facultyNumber: 876, maths: 6.00, english: 3.23, chemistry: 4.33)

print("Средният успех на \(student1.name) e:", student1.printStudentAverageGrade())
print("Средният успех на \(student2.name) e:", student2.printStudentAverageGrade())
