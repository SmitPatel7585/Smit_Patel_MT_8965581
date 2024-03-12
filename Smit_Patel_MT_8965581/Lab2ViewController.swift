//
//  Lab2ViewController.swift
//  Smit_Patel_MT_8965581
//
//  Created by user235217 on 3/11/24.
//

import UIKit

class Lab2ViewController: UIViewController {

        var counter = 0
        var flag = 0
        
        @IBOutlet weak var label_counter: UILabel!
    
        @IBAction func btnDecrease(_ sender: Any) {
        
            if(flag == 0){
                counter -= 1
                label_counter.text = String(counter)
            }else if(flag == 1){
                counter -= 2
                label_counter.text = String(counter)
            }
        }
        
        @IBAction func btnIncrease(_ sender: Any) {
           
            if(flag == 0){
                counter += 1
                label_counter.text = String(counter)
            }else if(flag == 1){
                counter += 2
                label_counter.text = String(counter)
            }
        }
        
        
        @IBAction func btnReset(_ sender: Any) {
                 label_counter.text = String(0)
                 flag = 0;
                 counter = 0;
        }
        
        @IBAction func btnDouble(_ sender: Any) {
          
            flag = 1;
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }

}
