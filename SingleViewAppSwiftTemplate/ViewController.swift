//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //age under 5
        var dateComponents = DateComponents()
        dateComponents.year = 2016
        dateComponents.month = 07
        dateComponents.day = 22
        let calendar = Calendar.current
        let date18yearOld = calendar.date(from: dateComponents)
        
        let testinfo = EntrantInformation(firstName: "a", lastName: "Kenttä", streetAddress: "Ok", city: "", state: "132", zipCode: "123", dateOfBirth: date18yearOld!)
        
        do {
            let entrant = try EmployeeHourlyMaintenance(entrantInformation: testinfo)
            print(entrant.entrantInformation.firstName)
            print(entrant.swipeAreaAccess(area: .amusement))
            print(entrant.swipeDiscounts())
        }
        catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

