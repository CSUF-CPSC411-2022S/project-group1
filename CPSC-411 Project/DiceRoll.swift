//
//  DiceRoll.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/24/22.
//

import Foundation


class DiceRollManager: ObservableObject {
    private var maxsize: Int = 5
    private(set) var FoodList: [String] = []
    
    func AddOption(_ Foodchoice: String) {
        if FoodList.capacity != maxsize {
            FoodList.append(Foodchoice)
        } 
    }
    
    init () {
       
    }
}
