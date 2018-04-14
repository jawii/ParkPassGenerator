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

    override init(entrantInformation: EntrantInformation) throws {
    
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = []
        self.rideAccess = [.ride]
        
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
        self.accessAreas = [.amusement, .kitchen]
    }
}

class EmployeeHourlyRideServices: Employee, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeRideService
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = [.amusement, .rideControl]
    }
}

class EmployeeHourlyMaintenance: Employee, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeMaintenance
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = [.amusement, .kitchen, .rideControl, .maintenance]
    }
}


///Manager is like a Employee 
class Manager: Employee, ManagerProfile {
    var entrantType = EntrantType.manager
    
    override init(entrantInformation: EntrantInformation) throws{
        try super.init(entrantInformation: entrantInformation)
        self.accessAreas = [.amusement, .kitchen, .office, .rideControl, .maintenance]
        self.discounts = Discounts(food: 25, merchandice: 25)
    }
}

