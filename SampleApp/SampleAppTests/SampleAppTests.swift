//
//  SampleAppTests.swift
//  SampleAppTests
//
//  Created by Rajesh Ramachandrakurup on 5/8/20.
//  Copyright © 2020 Rajesh Ramachandrakurup. All rights reserved.
//

import XCTest
@testable import SampleApp

class SampleAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSingleNumber() {
        let model = MyModel()
        let output = model.fetchNumber(from: "I have 25 apples")
        XCTAssertEqual(output, "25")
    }

    func testMultipleNumbers() {
        let model = MyModel()
        let output = model.fetchNumber(from: "I have 25 apples and 10 Oranges")
        XCTAssertEqual(output, "25,10")
    }

    func testNoNumberInputs() {
        let model = MyModel()
        let output = model.fetchNumber(from: "I have no apple")
        XCTAssertEqual(output, "NO RESULT")
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
