//
//  Meal.swift
//  FoodTracker
//
//  Created by Andrea Perez on 2/24/19.
//  Copyright © 2019 Andrea Perez. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int){
        
        //initialization should fail if there is no name or if the rating is negative
        if name.isEmpty || rating < 0{
            return nil
        }
     
        //Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }

}


