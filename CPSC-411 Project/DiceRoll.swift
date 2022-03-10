//
//  DiceRoll.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/24/22.
//

import Foundation


class DiceRoll: ObservableObject {
    private var maxsize: Int = 5
    private var FoodList: [String] = [String](repeating: "", count: 5)
    
    func FoodOption(_ Foodchoice: String) {
        if FoodList.capacity != maxsize {
            FoodList.append(Foodchoice)
        }
    }
    
    init () {
        
    }
}
