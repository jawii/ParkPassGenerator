//
//  Guests.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class Guest: GuestProfile{
    var entrantInformation: EntrantInformation
    var entrantType = EntrantType.guestClassic
    
    var accessAreas = AccessAreas(
                                amusementAcces: true,
                                kitchenAcces: false,
                                rideControlAccess: false,
                                officeAccess: false,
                                maintenanceAccess: false)
    var rideAccess = RideAccess(ride: true, canPassLines: false)
    
    init(entrantInformation: EntrantInformation) {
        self.entrantInformation = entrantInformation
    }

}

class GuestVIP: Guest, VIPGuestProfile{
    
    var discounts = Discounts(food: 10, merchandice: 20)

    override init(entrantInformation: EntrantInformation){
        super.init(entrantInformation: entrantInformation)
        entrantType = EntrantType.guestVIP
    }
}

class GuestFreeChild: Guest, FreeChildGuestProfile{
    
    override init(entrantInformation: EntrantInformation){
        super.init(entrantInformation: entrantInformation)
        entrantType = EntrantType.guestFreeChild
    
        //check that age is under
        do {
            try calculateAge(birthday: entrantInformation.dateOfBirth)
        } catch {}
    }
    
    func calculateAge(birthday: Date) throws {
        
        let timeNow = Date()
        let calendar = Calendar.current
        var age = calendar.dateComponents([.year], from: birthday, to: timeNow)
        
        print("Child Age is \(age.year!).")
        
        if age.year! > 5 {
            throw EntrantCheckError.ageTooHigh
        }
    }
}

