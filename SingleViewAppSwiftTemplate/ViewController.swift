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
        //Try to wrap the entrant. If succees, print the information
        if let entrant = TESTENTRANT {
            print("ENTRANT TYPE: \(entrant.entrantType.rawValue)")
            print("--------------------------------")
            testAccessAreas(entrant: entrant)
            print("--------------------------------")
            testAccessForRides(entrant: entrant)
            print("--------------------------------")
            entrant.swipeDiscounts()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testAccessAreas(entrant: Entrant){
        //Print Access for Amusement
        var listOfGranted: [AccessAreas] = []
        var listOfDenied: [AccessAreas] = []
        
        //List of all areas. Magic added those by hand but this is only for the test case for Part1
        let areas : [AccessAreas] = [.amusement, .kitchen, .maintenance, .office, .rideControl]
        for area in areas {
            entrant.swipeAreaAccess(area: area) ? listOfGranted.append(area) : listOfDenied.append(area)
        }
        var grantedAccessStr = "Access Granted for: |"
        for area in listOfGranted {
            grantedAccessStr += area.rawValue + "|"
        }
        print(grantedAccessStr)
        var deniedAccessStr = "Acced denied for: |"
        for area in listOfDenied {
            deniedAccessStr += area.rawValue + "|"
        }
        print(deniedAccessStr)
    }
    
    func testAccessForRides(entrant: Entrant) {
        var canRideStr = "Entrant can ride: "
        if entrant.swipeCheck(accessFor: .ride) {
            canRideStr += "Yes"
        } else {
            canRideStr += "No"
        }
        print(canRideStr)
        
        var canPassLinesStr = "Entrant can pass lines: "
        if entrant.swipeCheck(accessFor: .canPassLines) {
            canPassLinesStr += "Yes"
        } else {
            canPassLinesStr += "No"
        }
        print(canPassLinesStr)
    }
}

