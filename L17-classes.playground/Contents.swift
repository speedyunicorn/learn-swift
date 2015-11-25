//: Playground - noun: a place where people can play

import UIKit
import Foundation


var str = "Hello, playground"

class animal {
    var namePerson: String
    var petA: String
    var petB: String
    var favoriteAnimal: String


    init ( nP: String, pA: String, pB: String, fA: String){
        self.namePerson = nP
        self.petA = pA
        self.petB = pB
        self.favoriteAnimal = fA
    }
    
    func fullprofile () -> String{
        return "\(namePerson), \(petA), \(petB), \(favoriteAnimal)"
    
    }
}

var p1 : animal = animal(nP: "Matt", pA: "poodle", pB: "parrot", fA: "dolphin")

p1.fullprofile()


class Person {
    var firstName: String
    var lastName: String
    var yearOfBirth: Int
    
    init ( fN: String, lN: String, yOB: Int){
        self.firstName = fN
        self.lastName = lN
        self.yearOfBirth = yOB
    }
    
    var fullName: String {
        return "\(firstName), \(lastName)"
    }
    
    var age: Int {
        let currentYear = NSCalendar.currentCalendar().component(NSCalendarUnit.Year, fromDate: NSDate())
        return currentYear - yearOfBirth
    }
}


var p2: Person = Person(fN:
    "Alex", lN: "Black", yOB: 1990)

p2.yearOfBirth
p2.fullName
p2.age


let now = NSDate()
let cal = NSCalendar.currentCalendar()
let comp = cal.component(NSCalendarUnit.Year, fromDate: now)


class Employee : Person {
    var hourlySalary: Double = 9.47
    
    init(fN: String, lN: String, yOB: Int, hSal: Double) {
        self.hourlySalary = hSal
        super.init(fN: fN, lN: lN, yOB: yOB)
    }
    
    func weeklySalary(numberOfHoursWorked: Double) -> Double {
        return hourlySalary * numberOfHoursWorked
    }
}


var e1: Employee = Employee(fN: "Mat", lN: "Black", yOB: 1750, hSal: 17.0)

e1.fullName
e1.weeklySalary(40)



