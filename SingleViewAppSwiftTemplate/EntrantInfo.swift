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
struct EntrantInformation {
    let fullName: String?
    let lastName: String?
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
}

protocol GuestProfile: EntrantProfile {
    
}
protocol VIPGuestProfile: GuestProfile {
    var discounts: Discounts { get }
}
protocol FreeChildGuestProfile: GuestProfile {
    var dateOfBirth: Date { get }
}

class Entrant: EntrantProfile {
    var accessAreas: AccessAreas
    var rideAccess: RideAccess
    var address: EntrantInformation?
    var discount: Discounts
    
    init(accessAreas: AccessAreas, rideAccess: RideAccess) {
        self.accessAreas = accessAreas
        self.rideAccess = rideAccess
    }
}


