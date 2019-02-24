//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Andrea Perez on 2/24/19.
//  Copyright © 2019 Andrea Perez. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var meals = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load the sample data
        loadSampleMeals()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    //MARK: Private Methods
    private func loadSampleMeals(){
        let photo1 = UIImage(named: "meal1")
        let photo2 = UIImage(named: "meal2")
        let photo3 = UIImage(named: "meal3")
        
        guard let meal1 = Meal(name: "Chicken", photo: photo1, rating: 4)else{
            fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "Crawfish", photo: photo2, rating: 5) else{
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "Tacos", photo: photo3, rating: 3) else{
            fatalError("Unable to instantiate meal3")
        }
        meals += [meal1, meal2, meal3]
    }


    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //table view cells are reused and should be dequed using a cell identifier
        let cellIdentifier = "MealTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell else {
            fatalError("The dequed cell is not an instance of MealTableViewCell.")
        }
        
        //fetches the appropriate meal for the data source layout
        
        let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating
        
        return cell
     }
    
    
    
    
    
    
    
    
}
