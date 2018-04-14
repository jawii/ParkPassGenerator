//
//  Employees.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 14/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class Employee: Entrant {
    
    var discounts = Discounts(food: 15, merchandice: 25)

    init(entrantInformation: EntrantInformation) throws {
        let accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: false,
            rideControlAccess: false,
            officeAccess: false,
            maintenanceAccess: false)
        
        let rideAccess = RideAccess(ride: true, canPassLines: false)
        
        super.init(accessAreas: accessAreas, rideAccess: rideAccess, entrantInformation: entrantInformation)
        
        if entrantInformation.firstName == "" {
            throw EntrantCheckError.invalidFirstName
        } else if entrantInformation.lastName == "" {
            throw EntrantCheckError.invalidLastName
        } else if entrantInformation.state == "" {
            throw EntrantCheckError.invalidState
        } else if entrantInformation.zipCode == "" {
            throw EntrantCheckError.invalidZipCode
        }
    }
}


class EmployeeHourlyFoodServices: Employee, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeFoodService
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: true,
            rideControlAccess: false,
            officeAccess: false,
            maintenanceAccess: false)
    }
}

class EmployeeHourlyRideServices: Employee, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeRideService
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: false,
            rideControlAccess: true,
            officeAccess: false,
            maintenanceAccess: false)
    }
}

class EmployeeHourlyMaintenance: Employee, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeMaintenance
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: true,
            rideControlAccess: true,
            officeAccess: true,
            maintenanceAccess: true)
    }
}


///Manager is like a Employee 
class Manager: Employee, ManagerProfile {
    var entrantType = EntrantType.manager
    
    override init(entrantInformation: EntrantInformation) throws{

        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: true,
            rideControlAccess: true,
            officeAccess: true,
            maintenanceAccess: true)
        self.rideAccess = RideAccess(ride: true, canPassLines: false)
        self.discounts = Discounts(food: 25, merchandice: 25)
    }
}

