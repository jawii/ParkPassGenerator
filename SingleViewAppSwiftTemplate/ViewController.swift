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
        dateComponents.year = 2000
        dateComponents.month = 07
        dateComponents.day = 22
        let calendar = Calendar.current
        let date29yearOld = calendar.date(from: dateComponents)
        
        
        //TESTING TESTING
        let testinfo = EntrantInformation(firstName: "Jaakko", lastName: "Kenttä", streetAddress: "Ok", city: "Buc", state: "132", zipCode: "123", dateOfBirth: date29yearOld!)
        do {
            let employee = try GuestFreeChild(entrantInformation: testinfo)
            print(employee.entrantInformation.firstName)
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

