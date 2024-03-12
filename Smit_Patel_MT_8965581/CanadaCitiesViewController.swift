//
//  CanadaCitiesViewController.swift
//  Smit_Patel_MT_8965581
//
//  Created by user235217 on 3/08/24.
//

import UIKit

class CanadaCitiesViewController: UIViewController {
        
        @IBOutlet weak var countryInput: UITextField!
        @IBOutlet weak var invisibleErrorLabel: UILabel!
        @IBOutlet weak var cityImage: UIImageView!
        
        @IBAction func findMyCity(_ sender: UIButton) {
            
            if (countryInput.text == nil || countryInput.text!.isEmpty ){
                invisibleErrorLabel.isHidden = false
                invisibleErrorLabel.textColor = UIColor.red
                invisibleErrorLabel.text = "Please Enter Something!"
            } else {
                let city = countryInput.text!.lowercased()
                switch city {
                case "calgary":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Calgary")
                case "halifax":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Halifax")
                case "montreal":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Montreal")
                case "toronto":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Toronto")
                case "vancouver":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Vancouver")
                case "winnipeg":
                    invisibleErrorLabel.isHidden = true
                    cityImage.image = UIImage(named: "Winnipeg")
                default:
                    invisibleErrorLabel.isHidden = false
                    invisibleErrorLabel.textColor = UIColor.red
                    invisibleErrorLabel.text = "Enter Valid City Name!"
                }
            }

        }
        
        
        //Calls this function when the tap is recognized.
        @objc func dismissKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            cityImage.image = UIImage(named: "Canada")
            invisibleErrorLabel.isHidden = true
            
            let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                      //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

                      tap.cancelsTouchesInView = false

                      view.addGestureRecognizer(tap)

            // Do any additional setup after loading the view.
        }
    


}
