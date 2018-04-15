//
//  Roles.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 13/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

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
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    let dateOfBirth: Date?
}

enum EntrantType: String {
    //Guests
    case guestClassic = "Guest - Classic"
    case guestVIP = "Guest - VIP"
    case guestFreeChild = "Guest - Free Child"
    //Hourly Employees
    case Employee
    case employeeFoodService = "Employeee Food Services"
    case employeeRideService = "Employeee Ride Services"
    case employeeMaintenance = "Employee Maintenance"
    //other
    case manager = "Manager"
}


//Protocols for all Entrants
protocol EntrantProfile {
    var accessAreas : [AccessAreas] { get }
    var rideAccess: [RideAccess] { get }
    var entrantInformation: EntrantInformation { get }
    var discounts: [Discounts] { get }
}

//Protocols for Guests. Leave VIP and Child protocol empty for now..
protocol GuestProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol VIPGuestProfile: GuestProfile {
}
protocol FreeChildGuestProfile: GuestProfile {
}

//Protocols for Employees. Leave VIP and Child protocol empty for now..
protocol EmployeeProfile: EntrantProfile {
    var entrantType: EntrantType { get }
}
protocol EmployeeHourlyProfile: EmployeeProfile{
    
}
protocol ManagerProfile: EntrantProfile {
}


///Parent Class for all Entrants
class Entrant: EntrantProfile {
    var accessAreas: [AccessAreas] = []
    var rideAccess: [RideAccess] = []
    var discounts: [Discounts] = []
    var entrantInformation: EntrantInformation
    
    init?(entrantInformation: EntrantInformation) throws{
        self.entrantInformation = entrantInformation
    }
    
    ///
    //SWIPE RETURNS NORMALLY BOOLEAN VALUE BUT FOR PART I IT PRINTS STRING
    ///
    func swipeAreaAccess(area: AccessAreas)-> Void{
        
        if checkIfBirthday() {
            print("Happy BirthDay!!")
        }
        
        //check if area is in accessAreas
        for ownArea in accessAreas {
            if ownArea == area {
                print("Access granted")
                //return true
                return
            }
        }
        print("Access denied")
        //return false
    }
    
    func returnDayAndMonth(from date: Date) -> (day: Int, month: Int) {
        let ageComponents = Calendar.current.dateComponents([.day, .month], from: date)
        return (ageComponents.day!, ageComponents.month!)
    }
    
    //Swipecheck for rideaccess.
    func swipeCheck(accessFor: RideAccess) -> Void{
        
        if checkIfBirthday() {
            print("Happy BirthDay!!")
        }
        
        for access in rideAccess {
            if access == accessFor {
                print("Access granted")
                //return true
                return
            }
        }
        print("Access denied")
        //return false
    }
    
    //Swipe for Discount values. Function prints them on console.
    func swipeDiscounts(){
        
        if checkIfBirthday() {
            print("Happy BirthDay!!")
        }
        
        for discount in discounts{
            switch discount {
            case .food(let value):
                print("Food discount \(value)%. ")
                
            case .merchandice(let value):
                print("Merchandice discount \(value)%")
            }
        }
        
        if(discounts.isEmpty) {
            print("No discounts")
        }
    }
    
    ///Check if the entrant has birthday
    func checkIfBirthday() -> Bool{
        
        if let age = entrantInformation.dateOfBirth {
            let timeNow = Date()
            let dayAndMonthNow = returnDayAndMonth(from: timeNow)
            let birthday = returnDayAndMonth(from: age)
            
            if dayAndMonthNow == birthday {
                return true
            } else {
                return false
            }
        }
        return false
    }
    
    
}

