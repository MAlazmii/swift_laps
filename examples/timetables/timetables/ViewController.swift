//
//  ViewController.swift
//  timetables
//
//  Created by Mohammed Abdullah Alotaibi on 20/12/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var inputBox: UITextField!
    @IBOutlet weak var theTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goPressed(_ sender: Any) {
        // Show the table
        theTable.isHidden = false
        // reload the table
        theTable.reloadData()
        // hide the keyboard
        inputBox.resignFirstResponder()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = UIListContentConfiguration.cell()
        // rowNumber * inputBox.text = result
        if (inputBox.text == nil || inputBox.text == "") {
            content.text = ""
        }
        else{
            let inputVal = Int(inputBox.text!)
            if (indexPath.row < 30){
                content.text = "\(indexPath.row + 1) * \(inputBox.text!) = \((indexPath.row + 1) * inputVal!)"
            }
            else{
                // newRowNumber is the modulus of 30
                let newRowNumber = indexPath.row % 30
                // divide the inputVal by newRowNumber
                let theValue = Double(inputVal!) / Double(newRowNumber + 1)

                let fourDPResult = String(format: "%.4f", theValue) //theValue is of type Double

                content.text = "\(inputBox.text!) / \(newRowNumber + 1) = \(fourDPResult)"
            }
        }
        myCell.contentConfiguration = content
        return myCell
    }

}
