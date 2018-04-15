//
//  Errors.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Jaakko Kenttä on 14/04/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

//Error handling
enum EntrantCheckError:String, Error {
    case invalidAge = "Invalid Age."
    case ageTooHigh = "Age too high for Free Child Pass."
    
    case invalidFirstName = "Invalid first name."
    case invalidLastName = "Invalid last name."
    case invalidState = "Invalid state."
    case invalidZipCode = "Invalid zip code."
    case invalidCity = "Invalid City name."
}





