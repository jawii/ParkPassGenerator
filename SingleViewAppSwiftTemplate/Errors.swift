//
//  Errors.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 14/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

//Error handling pass generation
enum EntrantCheckError:String, Error {
    case invalidAge = "Age not given."
    case ageTooHigh = "Age too high for free child pass."
    
    case invalidFirstName = "First name cannot be empty."
    case invalidLastName = "Last name cannot be empty."
    case invalidState = "State name cannot be empty."
    case invalidZipCode = "Zip code cannot be empty."
    case invalidCity = "City name cannot be empty."
    case invalidSNN = "Social Security Number cannot be empty"
}





