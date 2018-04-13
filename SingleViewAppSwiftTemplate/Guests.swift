//
//  Guests.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class Guest: Entrant, GuestProfile{
    
    init(){
        let accessAreas = AccessAreas(amusementAcces: true, kitchenAcces: false, rideControlAccess: false, rideAccess: false, officeAccess: false, maintenanceAccess: false)
        let rideAccess = RideAccess(ride: true, canPassLines: false, rideControlAccess: false)
        
        super.init(accessAreas: accessAreas, rideAccess: rideAccess)
    }
}

class GuestVIP: Guest, VIPGuestProfile{
    
    var discounts = Discounts(food: 10, merchandice: 20)

    override init(){
        super.init()
        self.rideAccess = RideAccess(ride: true, canPassLines: true, rideControlAccess: false)
    }
}

class GuestFreeChild: Entrant, FreeChildGuestProfile{
    
    var dateOfBirth: Date
    
    init(dateOfBirth: Date){
        self.dateOfBirth = dateOfBirth
        
        let accessAreas = AccessAreas(amusementAcces: true, kitchenAcces: false, rideControlAccess: false, rideAccess: false, officeAccess: false, maintenanceAccess: false)
        let rideAccess = RideAccess(ride: true, canPassLines: true, rideControlAccess: false)
        
        super.init(accessAreas: accessAreas, rideAccess: rideAccess)
    }
}
