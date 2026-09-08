//
//  ViewController.swift
//  diceRoll
//
//  Created by Mohammed Abdullah Alotaibi on 20/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var inputBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func guess(_ sender: Any) {
        // Hide the keyboard
        inputBox.resignFirstResponder()
        
        let dice = Int.random(in: 2..<13)
        let guess = Int(inputBox.text!)
        if dice == guess {
            message.text = "You guessed right!"
        } else {
            message.text = "You guessed wrong! The dice rolled \(dice)"
        }
        // clear the input box
        inputBox.text = ""
    }
    
}

