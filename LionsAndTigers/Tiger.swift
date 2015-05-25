//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Elton Nix on 5/24/15.
//  Copyright (c) 2015 Elton Nix. All rights reserved.
//

import Foundation
import UIKit

var currentRandomNumber = 0

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int) {
        chuffANumberOfTimes(numberOfTimes, isLoud: true)
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            } else {
                println("Tiger: purr purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        return regularAge * 3
    }
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(3)))
        do {
            randomNumber = Int(arc4random_uniform(UInt32(3)))
        } while (currentRandomNumber == randomNumber)
        
        currentRandomNumber = randomNumber
        
        var randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family"
        } else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 meters"
        }
        
        return randomFact
    }
}