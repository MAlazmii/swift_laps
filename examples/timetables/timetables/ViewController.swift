//
//  ViewController.swift
//  timetables
//
//  Created by Mohammed Abdullah Alotaibi on 20/12/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var inputValue: Int?

    @IBOutlet weak var inputBox: UITextField!
    @IBOutlet weak var theTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goPressed(_ sender: Any) {
        inputBox.resignFirstResponder()
        guard let value = TableInput.parse(inputBox.text ?? "") else {
            inputValue = nil
            theTable.isHidden = true
            theTable.reloadData()
            let alert = UIAlertController(title: "Enter a whole number", message: "Use a value from \(Int.min / 30) to \(Int.max / 30).", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        inputValue = value
        theTable.isHidden = false
        theTable.reloadData()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inputValue == nil ? 0 : 60
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = UIListContentConfiguration.cell()
        if let value = inputValue {
            let row = indexPath.row % 30 + 1
            if indexPath.row < 30 {
                content.text = "\(row) * \(value) = \(row * value)"
            } else {
                let result = String(format: "%.4f", Double(value) / Double(row))
                content.text = "\(value) / \(row) = \(result)"
            }
        }
        myCell.contentConfiguration = content
        return myCell
    }

}
