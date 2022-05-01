//
//  DiceRoll.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/24/22.
//

import Foundation

struct Option: Identifiable {
    var id = UUID()
    var name: String
}

class DiceRollManager: ObservableObject {
    private var maxsize: Int = 5
    @Published var ChoiceList: [Option] = []
    func AddOption(_ Foodchoice: String) {
        if ChoiceList.capacity != maxsize {
            ChoiceList.append(Option(name: Foodchoice))
        } 
    }
    
    func roll() -> Int {
        return Int.random(in: 1...6)
    }
    
    
    init () {
       
    }
}
