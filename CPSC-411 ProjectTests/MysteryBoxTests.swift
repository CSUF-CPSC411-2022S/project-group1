//
//  MysteryBoxTests.swift
//  CPSC-411 ProjectTests
//
//  Created by Tran, Nathan on 3/10/22.

import XCTest
@testable import CPSC_411_Project
class MysteryBoxTests: XCTestCase {

   
    func testPrizesInBox(){
        let box1 = MysteryBox()
        XCTAssertFalse(box1.prizes.isEmpty)//test if the mystery box has prizes
    }
    
    func testAddPrize(){
        let box2 = MysteryBox()
        box2.addPrize("Wendy")
        XCTAssertTrue(box2.prizes.count > 5)
        //test to see if th prize got added, since 5 prizes are in the default box
    }
    
    func testRemovePrize(){
        let box3 = MysteryBox()
        box3.randomPrize()
        XCTAssert(box3.prizes.count < 5)
        //Test to see if a prize got removed
    }
    func testMultiplePrizes(){
        let box4 = MysteryBox()
        box4.addPrize("In n out")
        box4.addPrize("5 guys")
        box4.addPrize("Free coffee")
        box4.randomPrize()
        box4.randomPrize()
        XCTAssert(box4.prizes.count == 6)
        //Test multiple calls of the addPrize and randomPrize function
        // adds 3 prizes and removes 2 ramdom prizes, there should be 6 prizes
    }
}
