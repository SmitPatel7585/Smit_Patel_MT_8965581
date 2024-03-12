//
//  QuadraticViewController.swift
//  Smit_Patel_MT_8965581
//
//  Created by user235217 on 3/11/24.
//

import UIKit

class QuadraticViewController: UIViewController {

        @IBOutlet weak var TextFieldA: UITextField!
        @IBOutlet weak var TextFieldB: UITextField!
        @IBOutlet weak var TextFieldC: UITextField!
        @IBOutlet weak var error: UILabel!

        @IBAction func result(_ sender: UIButton) {
            guard let a = Double(TextFieldA.text ?? ""),
                  let b = Double(TextFieldB.text ?? ""),
                  let c = Double(TextFieldC.text ?? "") else {
                showError("Enter valid values for A, B, and C.")
                return
            }
            
            if a == 0{
                error.isHidden = false
                showError("The value you entered for A is invalid.")
                return
            }
                   
            if b==0{
                error.isHidden = false
                showError("The value you entered for B is invalid.")
                return
            }
                   
            if c==0{
                error.isHidden = false
                showError("The value you entered for C is invalid.")
                return
            }

            let discriminant = b * b - 4 * a * c

            guard discriminant >= 0 else {
                showError("There are no real roots since the discriminant is less than zero.")
                return
            }

            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)

            if discriminant == 0 {
                showResult("There is only one value for X: \(root1)")
            } else {
                showResult("There are two values for X: \(root1) and \(root2)")
            }
        }

        @IBAction func clear(_ sender: UIButton) {
            clearTextFields()
            showError("Enter the values for A, B, and C to find X.")
        }

        func showError(_ message: String) {
            error.textColor = .red
            error.text = message
            error.isHidden = false
        }

        func showResult(_ message: String) {
            error.textColor = .black
            error.text = message
            error.isHidden = false
        }

        func clearTextFields() {
            TextFieldA.text = ""
            TextFieldB.text = ""
            TextFieldC.text = ""
        }

        @objc func dismissKeyboard() {
            view.endEditing(true)
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            error.isHidden = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }

}
