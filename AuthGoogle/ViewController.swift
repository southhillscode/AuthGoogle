//
//  ViewController.swift
//  AuthGoogle
//
//  Created by Rob on 3/17/18.
//  Copyright © 2018 Rob Fitzgerald, Inc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUp(_ sender: Any) {
            Auth.auth().createUser(withEmail: self.email.text!, password: self.password.text!) { (user, error) in
                if user != nil {
                    print ("User Has Signed Up!")
                }
                if error != nil {
                    print(":(")
                }
            }
        
    }
    
    @IBAction func signIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: self.email.text!, password: self.password.text!) { (user, error) in
            if user != nil {
                print ("User Has Signed In!")
            }
            if error != nil {
                print(":(")
            }
        }
        
    }
    
}

