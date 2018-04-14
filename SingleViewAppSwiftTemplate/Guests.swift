//
//  Guests.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class Guest:Entrant, GuestProfile{
    var entrantType = EntrantType.guestClassic
    
    init(entrantInformation: EntrantInformation) throws{
        let accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: false,
            rideControlAccess: false,
            officeAccess: false,
            maintenanceAccess: false)
        let rideAccess = RideAccess(ride: true, canPassLines: false)
        
        super.init(accessAreas: accessAreas, rideAccess: rideAccess, entrantInformation: entrantInformation)
    }

}

class GuestVIP: Guest, VIPGuestProfile{
    
    var discounts = Discounts(food: 10, merchandice: 20)

    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        entrantType = EntrantType.guestVIP
        self.rideAccess = RideAccess(ride: true, canPassLines: true)
    }
}

class GuestFreeChild: Guest, FreeChildGuestProfile{
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        entrantType = EntrantType.guestFreeChild
    
        //check that age is under 5
        do {
            try checkcAgeIsOverFice(with: entrantInformation.dateOfBirth)
        } catch {
            print(error)
        }
    }
    
    func checkcAgeIsOverFice(with birthday: Date) throws {
        
        let timeNow = Date()
        let calendar = Calendar.current
        var age = calendar.dateComponents([.year], from: birthday, to: timeNow)
        
       //print("Child Age is \(age.year!).")
        
        if age.year! > 5 {
            throw EntrantCheckError.ageTooHigh
        }
    }
}

