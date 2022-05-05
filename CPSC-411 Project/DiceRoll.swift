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
    private var maxsize: Int = 5
    @Published var ChoiceList: [Option] = []
    
    func AddOption(_ Foodchoice: String) {
        if ChoiceList.capacity != maxsize {
            ChoiceList.append(Option(name: Foodchoice))
        }
    }
    
    func roll() -> Int {
        
        if (ChoiceList.count == 1 || ChoiceList.isEmpty) {
            return 1
        } else if (ChoiceList.count == 2) {
            return Int.random(in: 1...2)
        } else if (ChoiceList.count == 3) {
            return Int.random(in: 1...3)
        } else if (ChoiceList.count == 4) {
            return Int.random(in: 1...4)
        } else if (ChoiceList.count == 5) {
            return Int.random(in: 1...5)
        } else {
            return Int.random(in: 1...6)
        }
    }
    
    func display() -> String {
        
        var pick: String = ""
        
        if (ChoiceList.isEmpty) {
            pick = "List is empty"
        }
        
        if(roll() == 1) {
            pick = ChoiceList[0].name
        }
        else if (roll() == 2) {
            pick = ChoiceList[1].name
        }
        else if (roll() == 3) {
            pick = ChoiceList[2].name
        }
        else if (roll() == 4) {
            pick = ChoiceList[3].name
        }
        else if (roll() == 5) {
            pick = ChoiceList[4].name
        }
        else if (roll() == 6) {
            pick = ChoiceList[5].name
        }
        
        return pick
        
    }
    

    init () {
       
    }
}
