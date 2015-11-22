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


