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
        }
        return Int.random(in: 1...6)
    }
    
    func display() -> String {
        
        if (ChoiceList.isEmpty) {
            return "List is empty"
        }
        
        return ChoiceList[Int.random(in: 0...5)].name
    }
    

    init () {
       
    }
}
