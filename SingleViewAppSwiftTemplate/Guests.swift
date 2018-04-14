//
//  Guests.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class Guest: GuestProfile{
    
    var entrantType = EntrantType.guestClassic
    
    var accessAreas = AccessAreas(
                                amusementAcces: true,
                                kitchenAcces: false,
                                rideControlAccess: false,
                                officeAccess: false,
                                maintenanceAccess: false)
    var rideAccess = RideAccess(ride: true, canPassLines: false)

}

class GuestVIP: Guest, VIPGuestProfile{
    
    var discounts = Discounts(food: 10, merchandice: 20)

    override init(){
        super.init()
        entrantType = EntrantType.guestVIP
    }
}

class GuestFreeChild: Guest, FreeChildGuestProfile{
    var entrantInformation: EntrantInformation
    

   init(entrantInformation: EntrantInformation){
        self.entrantInformation = entrantInformation
        super.init()
        entrantType = EntrantType.guestFreeChild
    }
}


