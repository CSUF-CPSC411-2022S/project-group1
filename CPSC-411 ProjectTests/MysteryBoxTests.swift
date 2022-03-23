//
//  MysteryBoxTests.swift
//  CPSC-411 ProjectTests
//
//  Created by Tran, Nathan on 3/10/22.
//

import XCTest
@testable import CPSC_411_Project
class MysteryBoxTests: XCTestCase {

   
    func testPrizesInBox(){
        let box1 = MysteryBox()
        XCTAssertFalse(box1.prizes.isEmpty)
    }
    
}
