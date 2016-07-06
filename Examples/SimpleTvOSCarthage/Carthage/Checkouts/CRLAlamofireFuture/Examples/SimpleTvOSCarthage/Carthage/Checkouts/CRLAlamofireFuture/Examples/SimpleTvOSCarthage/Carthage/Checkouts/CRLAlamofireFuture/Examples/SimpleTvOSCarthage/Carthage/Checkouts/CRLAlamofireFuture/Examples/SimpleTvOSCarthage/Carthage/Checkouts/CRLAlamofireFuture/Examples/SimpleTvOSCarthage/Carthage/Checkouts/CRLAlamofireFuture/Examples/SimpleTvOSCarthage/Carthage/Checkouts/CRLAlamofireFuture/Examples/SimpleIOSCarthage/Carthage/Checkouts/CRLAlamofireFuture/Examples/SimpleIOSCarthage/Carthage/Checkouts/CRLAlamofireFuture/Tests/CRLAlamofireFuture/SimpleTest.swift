//
//  CRLAlamofireFuture_iOSTests.swift
//  CRLAlamofireFuture iOSTests
//
//  Created by Ruslan Yupyn on 7/4/16.
//
//

import XCTest
import Alamofire
import Future
@testable import CRLAlamofireFuture


class CRLAlamofireFuture_iOSTests: XCTestCase {
    
    let correctURLBase = "https://raw.githubusercontent.com/necrowman/CRLAlomofireFeature/master/"
    let uncorrectURLBase = "https://raw.githubusercontent12.com/necrowman/CRLAlomofireFeature/master/"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //MARK: - responseString() -> Future<String> testing
    func testSimpleString() {
        let asyncExpectation = expectationWithDescription("AlamofireResponseString")
        let urlString = "\(correctURLBase)simpleTestURL.txt"
        let future = Alamofire.request(.GET, urlString).responseString()
        future.onSuccess { value in
            print("RESULT VALUE -> ", value)
            XCTAssertEqual(value, "Test String")
            asyncExpectation.fulfill()
        }
        future.onFailure { error in
            print("ERROR VALUE -> ", error)
            XCTFail("Whoops, error \(error)")
            asyncExpectation.fulfill()
        }
        
        self.waitForExpectationsWithTimeout(5) { error in
            XCTAssertNil(error)
        }
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
