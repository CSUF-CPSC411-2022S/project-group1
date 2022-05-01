//
//  DiceRoll.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/24/22.
//

import Foundation
import SwiftUI

struct Option: Identifiable {
    var id = UUID()
    var name: String
}

class DiceRollManager: ObservableObject {
    var maxsize: Int = 6
    var max: Int = 0
    @Published var ChoiceList: [Option] = []
    
    func AddOption(_ Foodchoice: String) {
        if ChoiceList.count <= max {
            ChoiceList.append(Option(name: Foodchoice))
            max = maxsize - 1
        }
    }
    
    func roll() -> Int {
        return Int.random(in: 1...6)
    }
    
    
    
    
    init () {
       
    }
}
