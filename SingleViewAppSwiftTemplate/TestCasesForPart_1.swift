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
//*
var dateComponents = DateComponents(calendar: Calendar.current, year: 1988, month: 22, day: 7)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate)

let TESTENTRANT = try! Guest(entrantInformation: TESTIENTRANTNFORMATION)
//*/


///
/// GUEST - VIP - Birthdays [at least was on 4/15 :) ]
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: 1988, month: 4, day: 15)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate)

let TESTENTRANT = try! GuestVIP(entrantInformation: TESTIENTRANTNFORMATION)
*/


///
/// GUEST - FREE CHILD - AGE UNDER 5 YEARS - BIRTHDAY
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: 2015, month: 4, day: 15)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate)
let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)
*/


///
/// GUEST - FREE CHILD - AGE OVER 5 YEARS
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: 2012, month: 2, day: 10)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate!)
let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)
*/


//
// EMPLOYEE - Maintenance
//
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: nil)
let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)
*/



//
// EMPLOYEE - Maintenance - First Name not given
//
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: nil)
let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)
*/



//
// EMPLOYEE - Maintenance - State not given
//
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: nil, month: nil, day: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "", zipCode: "90540", dateOfBirth: nil)
let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)
*/


//
// MANAGER - Birthday
//
/*
var dateComponents = DateComponents(calendar: Calendar.current, year: 2018, month: 04, day: 15)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: testDate)
let TESTENTRANT = try! Manager(entrantInformation: TESTIENTRANTNFORMATION)
*/
