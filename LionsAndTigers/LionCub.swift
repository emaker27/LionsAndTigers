//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Elton Nix on 6/5/15.
//  Copyright (c) 2015 Elton Nix. All rights reserved.
//

import Foundation

class LionCub: Lion {
    func rubLionCubsBelly() {
        println("LionCub: Snuggle and be happy")
    }
    
    override func roar() {
        
        super.roar()
        
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        if isAlphaMale {
            randomFactString = "Cubs are usally hidden in the dense bush for about six weeks."
        } else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks."
        }
        return randomFactString
    }
    
}