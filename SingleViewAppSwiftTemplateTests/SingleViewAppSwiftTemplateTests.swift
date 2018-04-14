//
//  SingleViewAppSwiftTemplateTests.swift
//  SingleViewAppSwiftTemplateTests
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import XCTest
@testable import SingleViewAppSwiftTemplate

class SingleViewAppSwiftTemplateTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

/*
        //age under 5
        var dateComponents = DateComponents()
        dateComponents.year = 2000
        dateComponents.month = 07
        dateComponents.day = 22
        let calendar = Calendar.current
        let date18yearOld = calendar.date(from: dateComponents)
        
        let testinfo = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Ok", city: "Buc", state: "132", zipCode: "123", dateOfBirth: date18yearOld!)
        
        do {
            let employee = try GuestFreeChild(entrantInformation: testinfo)
            print(employee.entrantInformation.firstName)
        }
        catch {
            print(error)
        }
*/
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
