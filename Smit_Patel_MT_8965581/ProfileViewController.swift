//
//  ProfileViewController.swift
//  Smit_Patel_MT_8965581
//
//  Created by user235217 on 3/11/24.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setting a corner radius in imageview.
        profileImage.layer.cornerRadius = 100
        
    }
    


}
