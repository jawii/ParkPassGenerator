//
//  Roles.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

//List off AccessAreas
enum AccessAreas: String{
    case amusement = "Amusement Area"
    case kitchen = "Kitchen Area"
    case rideControl = "Ride Control Area"
    case office = "Office Area"
    case maintenance = "Maintenance Area"
}

//List of accesses on rides
enum RideAccess: String{
    case ride = "Entrant can ride"
    case canPassLines = "Entrant can pass lines"
}

enum Discounts {
    case food(Double)
    case merchandice(Double)
}

struct EntrantInformation {
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    let dateOfBirth: Date?
}

enum EntrantType: String {
    //Guests
    case guestClassic = "Guest - Classic"
    case guestVIP = "Guest - VIP"
    case guestFreeChild = "Guest - Free Child"
    //Hourly Employees
    case Employee
    case employeeFoodService = "Employeee Food Services"
    case employeeRideService = "Employeee Ride Services"
    case employeeMaintenance = "Employee Maintenance"
    //other
    case manager = "Manager"
}


//Protocols for all Entrants
protocol EntrantProfile {
    var accessAreas : [AccessAreas] { get }
    var rideAccess: [RideAccess] { get }
    var entrantInformation: EntrantInformation { get }
    var discounts: [Discounts] { get }
}

//Protocols for Guests. Leave VIP and Child protocol empty for now...
protocol GuestProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol VIPGuestProfile: GuestProfile {
}
protocol FreeChildGuestProfile: GuestProfile {
}

//Protocols for Employees
protocol EmployeeProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol EmployeeHourlyProfile: EmployeeProfile{
    
}
protocol ManagerProfile: EntrantProfile {
}
