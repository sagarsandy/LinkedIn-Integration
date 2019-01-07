//
//  ViewController.swift
//  LinkedIn Integration
//
//  Created by Sagar Sandy on 02/01/19.
//  Copyright © 2019 Sagar Sandy. All rights reserved.
//

import UIKit
import LinkedinSwift

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    let linkedInHelper = LinkedinSwiftHelper(configuration: LinkedinSwiftConfiguration(clientId: "811etv42tchlv4", clientSecret: "v7kcYAvzCMpGZRkn", state: "SSChecking", permissions: ["r_basicprofile", "r_emailaddress"], redirectUrl: "https://www.invanto.com/"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func loginWithLinkedInButtonPressed(_ sender: Any) {
        
        linkedInHelper.authorizeSuccess({ (token) in
            print(token)
        }, error: { (error) in
            print(error.localizedDescription)
        }) {
            print("Login cancelled")
        }
        
    }
}

