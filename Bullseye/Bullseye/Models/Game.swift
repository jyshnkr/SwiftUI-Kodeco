//
//  Game.swift
//  Bullseye
//
//  Created by JayaShankar Mangina on 11/21/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        return 999
    }
}
