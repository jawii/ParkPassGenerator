//
//  TestCasesForPart_1.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 15/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation


///
/// GUEST - CLASSIC
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2010, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil)

let TESTENTRANT = try! Guest(entrantInformation: TESTIENTRANTNFORMATION)
*/


///
/// GUEST - VIP
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2010, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil)

let TESTENTRANT = try! GuestVIP(entrantInformation: TESTIENTRANTNFORMATION)
*/


///
/// GUEST - FREE CHILD - AGE GIVEN - AGE UNDER 5 YEARS
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2015, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate!)
let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)
*/


///
/// GUEST - FREE CHILD - AGE GIVEN - AGE OVER 5 YEARS
///
/*
 var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2000, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
 let calendar = Calendar.current
 let testDate = calendar.date(from: dateComponents)
 let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: testDate!)
 let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)
 */

///
/// GUEST - FREE CHILD - AGE GIVEN
///
/*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2010, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil)
let TESTENTRANT = try! GuestFreeChild(entrantInformation: TESTIENTRANTNFORMATION)
*/


//
// EMPLOYEE - Maintenance
//
/*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2010, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: nil)
let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)
*/



//
// EMPLOYEE - Maintenance - First Name not given
//
//*
var dateComponents = DateComponents(calendar: Calendar.current, timeZone: nil, era: nil, year: 2010, month: 7, day: 22, hour: 12, minute: 00, second: 00, nanosecond: 00, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let calendar = Calendar.current
let testDate = calendar.date(from: dateComponents)
let TESTIENTRANTNFORMATION = EntrantInformation(firstName: "", lastName: "Kenttä", streetAddress: "Streetname", city: "Oulu", state: "Oulu", zipCode: "90540", dateOfBirth: nil)
let TESTENTRANT = try! EmployeeHourlyMaintenance(entrantInformation: TESTIENTRANTNFORMATION)
//*/
