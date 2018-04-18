//
//  TestCasesForPart_1.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 15/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation


///
/// GUEST - CLASSIC - no birthday
///

let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil, socialSecurityNumber: "05501")
let TESTENTRANT = try! Guest(entrantInformation: TESTIENTRANTNFORMATION)



///
/// GUEST - VIP
///

//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil, socialSecurityNumber: nil)
//let TESTENTRANT = try! GuestVIP(entrantInformation: TESTIENTRANTNFORMATION)




///
/// GUEST - FREE CHILD - AGE UNDER 5 YEARS - BIRTHDAY
///


//let testDate = Date()
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate, socialSecurityNumber: nil)
//let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)


///
/// GUEST - FREE CHILD - AGE OVER 5 YEARS
///


//var dateComponents = DateComponents(calendar: Calendar.current, year: 2012, month: 2, day: 10)
//let calendar = Calendar.current
//let testDate = calendar.date(from: dateComponents)
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate, socialSecurityNumber: nil)
//let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)


//
// EMPLOYEE - Food Service
//


//var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
//let calendar = Calendar.current
//let testDate = calendar.date(from: dateComponents)
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: testDate, socialSecurityNumber: "0213312")
//let TESTENTRANT = try! EmployeeHourlyFoodServices(entrantInformation: TESTIENTRANTNFORMATION)


//
// EMPLOYEE - RideService: First Name not given
//


//var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
//let calendar = Calendar.current
//let testDate = calendar.date(from: dateComponents)
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: testDate, socialSecurityNumber: "12122")
//let TESTENTRANT = try! EmployeeHourlyRideServices(entrantInformation: TESTIENTRANTNFORMATION)



//
// EMPLOYEE - Maintenance - State not given
//

//var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
//let calendar = Calendar.current
//let testDate = calendar.date(from: dateComponents)
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "", zipCode: "90540", dateOfBirth: testDate, socialSecurityNumber: "912313")
//let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)


//
// General Manager - Birthday
//


//let testDate = Date()
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: testDate, socialSecurityNumber: "012300")
//let TESTENTRANT = try! ManagerGeneral(entrantInformation: TESTIENTRANTNFORMATION)




//
// Shift Manager - date of birth not given
//

//
//let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: nil, socialSecurityNumber: "012300")
//let TESTENTRANT = try! ManagerShift(entrantInformation: TESTIENTRANTNFORMATION)

