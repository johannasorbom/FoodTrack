//
//  Meal.swift
//  FoodTrack
//
//  Created by Johanna Sörbom on 2017-07-24.
//  Copyright © 2017 Johanna Sörbom. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Types
    
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
    
}


