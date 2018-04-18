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
        //TESTENTRANT comes from file TestCasesForPart_1.swift
        if let entrant = TESTENTRANT {
            
            print(entrant.entrantType.rawValue)
            print("********************")
            print("Swipe for Amusement")
            print(entrant.swipeAreaAccess(area: .amusement))
            print("********************")
            
            print("Swipe for office")
            print(entrant.swipeAreaAccess(area: .office))
            print("********************")
            
            print("Swipe for skipping lines")
            print(entrant.swipeCheck(accessFor: .canPassLines))
            print("********************")
            
            print("DISCOUNTS")
            entrant.swipeDiscounts()
            
            //TEST THE 5 SECOND RULE FOR SWIPING
            let seconds = 4
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(seconds), execute: {
                print("\n \n \nNEW SWIPE AFTER \(seconds) SECONDS")
                entrant.swipeCheck(accessFor: .ride)
            })

        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

