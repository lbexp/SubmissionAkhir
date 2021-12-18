//
//  ViewController.swift
//  SubmissionAkhir
//
//  Created by Fiqar Aprialim on 19/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var restaurantTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Menghubungkan restaurantTableView dengan dataSource
        restaurantTableView.dataSource = self
        
        // Menghubungkan RestaurantTableViewCell dengan restaurantTableView
        restaurantTableView.register(UINib(nibName: "RestaurantTableViewCell", bundle: nil), forCellReuseIdentifier: "RestaurantCell")
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Jumlah restaurant
        restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Menghubungkan cell RestaurantCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as? RestaurantTableViewCell {
            
            // Nilai restaurant cell
            let restaurant = restaurants[indexPath.row]
            cell.nameRestaurant.text = restaurant.name
            cell.descriptionRestaurant.text = restaurant.description
            cell.photoRestaurant.image = restaurant.photo
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

