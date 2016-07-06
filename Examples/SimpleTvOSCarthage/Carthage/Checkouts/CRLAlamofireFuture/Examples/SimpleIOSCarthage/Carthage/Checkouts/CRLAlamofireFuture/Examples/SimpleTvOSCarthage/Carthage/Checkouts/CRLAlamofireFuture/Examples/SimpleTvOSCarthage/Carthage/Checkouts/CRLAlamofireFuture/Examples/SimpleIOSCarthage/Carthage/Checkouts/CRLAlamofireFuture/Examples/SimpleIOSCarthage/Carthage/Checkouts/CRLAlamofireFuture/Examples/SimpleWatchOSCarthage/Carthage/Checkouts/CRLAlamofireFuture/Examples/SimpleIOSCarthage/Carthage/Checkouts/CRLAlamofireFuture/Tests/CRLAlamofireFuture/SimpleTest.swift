//
//  CRLAlamofireFuture_iOSTests.swift
//  CRLAlamofireFuture iOSTests
//
//  Created by Ruslan Yupyn on 7/4/16.
//
//

import XCTest
@testable import CRLAlamofireFuture

class CRLAlamofireFuture_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertEqual(CRLAlamofireFuture.instance.frameworkFunctionExample(), "This is test framework function example")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
