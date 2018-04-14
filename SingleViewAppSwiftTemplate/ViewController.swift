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
        
        
        //TESTING TESTING
        let testinfo = EntrantInformation(fullName: "Jaakko", lastName: "Kenttä", streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: Date.distantFuture)
        let testGuestChild = GuestFreeChild(entrantInformation: testinfo)
        print(testGuestChild.entrantInformation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

