//
//  Roles.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation


struct AccessAreas {
    var amusementAcces: Bool
    var kitchenAcces: Bool
    var rideControlAccess: Bool
    var officeAccess: Bool
    var maintenanceAccess: Bool
}
struct RideAccess{
    var ride: Bool
    var canPassLines: Bool
}
struct Discounts {
    var food: Double
    var merchandice: Double
}
struct EntrantInformation {
    let fullName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    let dateOfBirth: Date
}

enum EntrantType {
    //Guests
    case guestClassic
    case guestVIP
    case guestFreeChild
    //Hourly Employees
    case Employee
    case employeeFoodService
    case employeeRideService
    case employeeMaintenance
    //other
    case manager
}


protocol EntrantProfile {
    var accessAreas : AccessAreas { get }
    var rideAccess: RideAccess { get }
    var entrantType: EntrantType { get }
}

protocol GuestProfile: EntrantProfile {
    
}
protocol VIPGuestProfile: GuestProfile {
    var discounts: Discounts { get }
}
protocol FreeChildGuestProfile: GuestProfile {
    var entrantInformation: EntrantInformation { get }
}


protocol EmployeeProfile: EntrantProfile {
    var entrantInformation: EntrantInformation { get }
    var discounts: Discounts { get }
}

protocol EmployeeHourlyProfile: EmployeeProfile {
}

protocol ManagerProfile: EntrantProfile {
    var discounts: Discounts { get }
    var entrantInformation: EntrantInformation { get }
}


/*
class Entrant: EntrantProfile {
    var accessAreas: AccessAreas
    var rideAccess: RideAccess
    var entrantInformation: EntrantInformation?
    var discount: Discounts?
    
    init(accessAreas: AccessAreas, rideAccess: RideAccess) {
        self.accessAreas = accessAreas
        self.rideAccess = rideAccess
    }
}
*/

