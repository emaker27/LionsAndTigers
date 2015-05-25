//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Elton Nix on 5/24/15.
//  Copyright (c) 2015 Elton Nix. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes(numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; chuff++ {
            self.chuff()
        }
    }
}