//
//  DiceRollMangerTest.swift
//  CPSC-411 ProjectTests
//
//  Created by Daniel Moran on 3/9/22.
//

import XCTest
@testable import CPSC_411_Project

class DiceRollMangerTest: XCTestCase {
    
    func testAddNewFoodOption() {
        let manager = DiceRollManager()
        manager.AddOption("In n Out")
        
        XCTAssertFalse(manager.FoodList.isEmpty)
        
    }
}
