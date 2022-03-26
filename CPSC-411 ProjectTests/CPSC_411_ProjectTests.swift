//
//  CPSC_411_ProjectTests.swift
//  CPSC-411 ProjectTests
//
//  Created by Daniel Moran on 2/22/22.
//

import XCTest
@testable import CPSC_411_Project

class CPSC_411_ProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
class CoinToss: XCTestCase{
    func testCoin(){
        let coin = Coin()
        coin.FlipCoin()
        XCTAssertTrue(coin.tailscounting + coin.headscounting >= 1 ,"we failed to count a flip")
        
    }
    func testRestart(){
            let coin = Coin()
        coin.restart()
        XCTAssertEqual(coin.intensity,0)
    }
    func testHead(){
                let coin = Coin()
        coin.HeadsTails()
        XCTAssertEqual(coin.headscounting,0)
    }


    
}
