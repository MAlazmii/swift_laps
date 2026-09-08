//
//  DetailViewController.swift
//  tableDetail
//
//  Created by Mohammed Abdullah Alotaibi on 20/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    var name: String?
    var room: String?
    var email: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // set the labels
        nameLabel.text = name
        roomLabel.text = room
        emailLabel.text = email

    }

    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
