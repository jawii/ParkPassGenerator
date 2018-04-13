//
//  Roles.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation


//ENUMERATION -> DropDownList
struct AccessAreas {
    var amusementAcces: Bool
    var kitchenAcces: Bool
    var rideControlAccess: Bool
    var rideAccess: Bool
    var officeAccess: Bool
    var maintenanceAccess: Bool
}
struct RideAccess{
    var ride: Bool
    var canPassLines: Bool
    var rideControlAccess: Bool
}
struct Discounts {
    var food: Double
    var merchandice: Double
}
struct Address {
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
}
/*
enum EntrantType {
    //Guests
    case classicGuest
    case VIPGuest
    case FreeChildGuest
    //Hourly Employees
    case foodServicesEmployee
    case rideServicesEmployee
    case maintenanceEmployee
    //other
    case manager
}
*/

protocol EntrantProfile {
    var accessAreas : AccessAreas { get }
    var rideAccess: RideAccess { get }
    var discounts: Discounts { get set }
}

protocol GuestProfile :EntrantProfile {
    
}


class Entrant {
    //var entrantType: EntrantType
    var dateOfBirth: Date?
    var firstName: String?
    var lastName: String?
    var address: Address?
    //init(){}
}

class Guest :Entrant, GuestProfile{
    var accessAreas: AccessAreas
    var rideAccess: RideAccess
    var discounts: Discounts
    
    override init(){
        accessAreas = AccessAreas(amusementAcces: true, kitchenAcces: false, rideControlAccess: false, rideAccess: false, officeAccess: false, maintenanceAccess: false)
        rideAccess = RideAccess(ride: true, canPassLines: false, rideControlAccess: false)
        discounts = Discounts(food: 0, merchandice: 0)
    }
}

class VIPGuest: Guest {
    
}

//testing






















