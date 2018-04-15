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

enum AccessAreas: String{
    case amusement = "Amusement Area"
    case kitchen = "Kitchen Area"
    case rideControl = "Ride Control Area"
    case office = "Office Area"
    case maintenance = "Maintenance Area"
}

enum RideAccess: String{
    case ride = "Entrant can ride"
    case canPassLines = "Entrant can pass lines"
}

enum Discounts {
    case food(Double)
    case merchandice(Double)
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
    var discounts: [Discounts] { get }
}

protocol GuestProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol VIPGuestProfile: GuestProfile {
}
protocol FreeChildGuestProfile: GuestProfile {
}
protocol EmployeeProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol EmployeeHourlyProfile: EmployeeProfile{
    
}
protocol ManagerProfile: EntrantProfile {
}



class Entrant: EntrantProfile {
    var accessAreas: [AccessAreas] = []
    var rideAccess: [RideAccess] = []
    var discounts: [Discounts] = []
    var entrantInformation: EntrantInformation
    
    init(entrantInformation: EntrantInformation) throws{
        self.entrantInformation = entrantInformation
    }
    
    func swipeAreaAccess(area: AccessAreas) -> Bool{
        //check if area is in accessAreas
        for ownArea in accessAreas {
            if ownArea == area {
                print("Access Granted to \(area.rawValue)")
                return true
            }
        }
        print("Access denied to \(area.rawValue)")
        return false
    }
    
    func swipeDiscounts(){
        for discount in discounts {
            switch discount {
            case .food(let value):
                print("Food discount \(value)%. ")
                
            case .merchandice(let value):
                print("Merchandice discount \(value)%")
            }
        }
    }
    
    func swipeCheck(accessFor: RideAccess) -> Bool{
        for access in rideAccess {
            if access == accessFor {
                print("Access granted: \(access)")
                return true
            }
        }
        print("Access denied: \(rideAccess)")
        return false
    }
}

