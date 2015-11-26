//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Car {

    var year : Int = 0
    var model : String = ""
    var topspeed : Int = 0
    var seats : String = ""
    

    func description() -> String {
        return "This is a car of model \(model), topspeed of \(topspeed), it was built in the year of \(year), and has type of \(seats) seats."
    }
}



 var sts = Car()
sts.model = "Ford"
sts.topspeed = 120
sts.year = 2015
sts.seats = "leather"

sts.description()

var ford = Car()

