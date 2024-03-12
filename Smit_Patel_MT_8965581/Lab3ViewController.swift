//
//  Lab3_ViewController.swift
//  Smit_Patel_MT_8965581
//
//  Created by user235217 on 3/08/24.
//

import UIKit

class Lab3ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var displayBox: UITextView!
    @IBOutlet weak var labelFeedback: UILabel!
    
    @IBAction func btnAdd(_ sender: Any) {
        
        displayBox.text = "Full Name : \(firstName.text!) \(lastName.text!) \nCountry : \(country.text!)\nAge : \(age.text!)"
        
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
    
        if( firstName.text!.isEmpty || lastName.text!.isEmpty || country.text!.isEmpty || age.text!.isEmpty ){
            labelFeedback.text = "Complete the missing Info!"
        }else{
            labelFeedback.text = "Successfully added!"
        }
            
    }
    
    @IBAction func btnClear(_ sender: Any) {
        
        firstName.text!.removeAll()
        lastName.text!.removeAll()
        country.text!.removeAll()
        age.text!.removeAll()
        displayBox.text!.removeAll()
        labelFeedback.text!.removeAll()
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayBox.isUserInteractionEnabled = false;
    }
}
