//
//  ProfileViewController.swift
//  SubmissionAkhir
//
//  Created by Fiqar Aprialim on 19/12/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var photoProfile: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // photoProfile styles
        photoProfile.layer.cornerRadius = photoProfile.frame.height / 2
        photoProfile.clipsToBounds = true
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
