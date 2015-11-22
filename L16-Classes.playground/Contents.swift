//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Address{
    var addressLine1: String
    var addressLine2 : String
    var stateCode : String
    var zipCode: String
    
    init (aLine1: String, aLine2: String, sCode: String, zCode: String){
        self.addressLine1 = aLine1
        self.addressLine2 = aLine2
        self.stateCode = sCode
        self.zipCode = zCode
    }
    
    func fullAddress() -> String {
        return "\(addressLine1), \(addressLine2), \(stateCode) \(zipCode)"
    }
    
}

var myAddress : Address = Address(aLine1: "555 Main Street", aLine2: "Seattle", sCode: "WA", zCode: "98001")

myAddress.fullAddress()

class Person{
    var firstName: String
    var lastname: String
    var address: Address
    
    init (fName: String, lName: String, address: Address){
        self.firstName = fName
        self.lastname = lName
        self.address = address
    }
    
    func fullName() -> String{
        return self.firstName + ", " + self.lastname
    }
}


var p1 : Person = Person(fName: "Alex", lName: "Peace", address: Address(aLine1: "123 East Ave", aLine2: "Redmond", sCode: "WA", zCode: "98075"))

p1.fullName()

p1.address.fullAddress()
p1.address.zipCode

class Student: Person{
    var grade: String
    
    init(fn : String, ln : String, a : Address, grade: String) {
        self.grade = grade
        super.init(fName: fn, lName: ln, address: a)
    }
}

var s1 : Student = Student(fn: "Matt", ln: "Daimon", a: Address(aLine1: "777 West Ave", aLine2: "Seattle", sCode: "WA", zCode: "98006"), grade: "5th")


s1.fullName()
s1.address.fullAddress()
s1.grade









