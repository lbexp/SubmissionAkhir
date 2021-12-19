//
//  DetailViewController.swift
//  SubmissionAkhir
//
//  Created by Fiqar Aprialim on 19/12/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoRestaurant: UIImageView!
    @IBOutlet weak var nameRestaurant: UILabel!
    @IBOutlet weak var rateRestaurant: UILabel!
    @IBOutlet weak var specialtyRestaurant: UILabel!
    @IBOutlet weak var addressRestaurant: UILabel!
    @IBOutlet weak var descriptionRestaurant: UILabel!
    
    var restaurant: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = restaurant {
            photoRestaurant.image = result.photo
            nameRestaurant.text = result.name
            rateRestaurant.text = "⭐️ \(result.rate)"
            specialtyRestaurant.text = result.specialty
            addressRestaurant.text = result.address
            descriptionRestaurant.text = result.description
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
