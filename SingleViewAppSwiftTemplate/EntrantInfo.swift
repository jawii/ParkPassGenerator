//
//  Roles.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

/*
struct AccessAreas {
    var amusementAcces: Bool
    var kitchenAcces: Bool
    var rideControlAccess: Bool
    var officeAccess: Bool
    var maintenanceAccess: Bool
}
*/

enum AccessAreas{
    case amusement
    case kitchen
    case rideControl
    case office
    case maintenance
}

enum RideAccess{
    case ride
    case canPassLines
}

struct Discounts {
    var food: Double
    var merchandice: Double
}


struct EntrantInformation {
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: String
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
    var accessAreas : [AccessAreas] { get }
    var rideAccess: [RideAccess] { get }
    var entrantInformation: EntrantInformation { get }
}

protocol GuestProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol VIPGuestProfile: GuestProfile {
    var discounts: Discounts { get }
}
protocol FreeChildGuestProfile: GuestProfile {
    
}
protocol EmployeeProfile: EntrantProfile {
    
}
protocol EmployeeHourlyProfile: EmployeeProfile{
    var entrantType: EntrantType { get }
    var entrantInformation: EntrantInformation { get }
    var discounts: Discounts { get }
}

protocol ManagerProfile: EntrantProfile {
    var entrantType: EntrantType { get }
    var discounts: Discounts { get }
    var entrantInformation: EntrantInformation { get }
}



class Entrant: EntrantProfile {
    var accessAreas: [AccessAreas] = []
    var rideAccess: [RideAccess] = []
    var entrantInformation: EntrantInformation
    
    init(entrantInformation: EntrantInformation) throws{
        self.entrantInformation = entrantInformation
    }
    
    func swipeAreaAccess(){
    }
    
    func swipeDiscounts(){
        
    }
    
    func swipeRides(){
        
    }
}

