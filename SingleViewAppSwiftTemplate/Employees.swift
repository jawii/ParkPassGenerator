//
//  Employees.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 14/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class EmployeeHourly {
    
    var accessAreas = AccessAreas(
                                amusementAcces: true,
                                kitchenAcces: false,
                                rideControlAccess: false,
                                officeAccess: false,
                                maintenanceAccess: false)
    
    var rideAccess = RideAccess(ride: true, canPassLines: false)
    var discounts = Discounts(food: 15, merchandice: 25)
    var entrantInformation: EntrantInformation
    
    
    init(entrantInformation: EntrantInformation) {
        self.entrantInformation = entrantInformation
    }
}


class EmployeeHourlyFoodServices: EmployeeHourly, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeFoodService
    
    override init(entrantInformation: EntrantInformation) {
        super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: true,
            rideControlAccess: false,
            officeAccess: false,
            maintenanceAccess: false)
    }
}

class EmployeeHourlyRideServices: EmployeeHourly, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeRideService
    
    override init(entrantInformation: EntrantInformation) {
        super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: false,
            rideControlAccess: true,
            officeAccess: false,
            maintenanceAccess: false)
    }
}

class EmployeeHourlyMaintenance: EmployeeHourly, EmployeeHourlyProfile {
    var entrantType = EntrantType.employeeMaintenance
    
    override init(entrantInformation: EntrantInformation) {
        super.init(entrantInformation: entrantInformation)
        self.accessAreas = AccessAreas(
            amusementAcces: true,
            kitchenAcces: true,
            rideControlAccess: true,
            officeAccess: true,
            maintenanceAccess: true)
    }
}


///Manager is like a Employee 
class Manager: ManagerProfile {
    var entrantType = EntrantType.manager
    var discounts = Discounts(food: 25, merchandice: 25)
    
    var accessAreas = AccessAreas(
        amusementAcces: true,
        kitchenAcces: true,
        rideControlAccess: true,
        officeAccess: true,
        maintenanceAccess: true)
    
    var rideAccess = RideAccess(ride: true, canPassLines: false)
    
    var entrantInformation: EntrantInformation
    
    init(entrantInformation: EntrantInformation) {
        self.entrantInformation = entrantInformation
    }
}

