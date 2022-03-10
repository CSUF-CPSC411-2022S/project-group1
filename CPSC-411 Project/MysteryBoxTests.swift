//
//  MysteryBoxTests.swift
//  CPSC-411 ProjectTests
//
//  Created by Tran, Nathan on 3/10/22.
//

import XCTest
@testable import CPSC_411_Project
class MysteryBoxTests: XCTestCase {

   
    func testValidNumber(){
        var box1 = MysteryBox()
        XCTAssertEqual(box1.num, 1)
        
    }

}
