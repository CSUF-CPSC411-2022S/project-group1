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
        
        XCTAssertTrue(manager.ChoiceList[0].name == "In n Out")
    }
    
    func testdiceroll() {
        let manager = DiceRollManager()
        let num = manager.roll()
        
        XCTAssertTrue ((1...6).contains(num))
    }
    
}
