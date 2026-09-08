//
//  DetailViewController.swift
//  researchPapers
//
//  Created by Mohammed Abdullah Alotaibi on 21/12/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var abstractLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var authorsLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!

    var titleVar: String?
    var url: URL?
    var abstract: String?
    var email: String?
    var authors: String?
    var year: String?
    @IBOutlet weak var urlButton: UIButton!
    
    @IBAction func urlClicked(_ sender: UIButton) {
        if (url == nil) {
            return
        }
        UIApplication.shared.open(url!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = titleVar
        abstractLabel.text = abstract
        emailLabel.text = email
        authorsLabel.text = authors
        yearLabel.text = year

        if (url == nil) {
            urlButton.isEnabled = false
        }

        // Do any additional setup after loading the view.
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
