//
//  SignInVC.swift
//  AthleticInstinct
//
//  Created by Zachary Blauvelt on 9/27/17.
//  Copyright © 2017 ZackBlauvelt. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func singInTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
                if error == nil {
                    print("ZACK: Email user authenticated with Firebase")
                    //if let user = user {
                        //let userData = ["provider": user.providerID]
                        //self.completeSignIn(id: user.uid, userData: userData)
                    //}
                } else {
                    FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
                        if error != nil {
                            print("ZACK: Unable to authenticate with Firebase user email")
                        } else {
                            print("ZACK: Successfully authenticated with Firebase")
                            
                            //if let user = user {
                                //let userData = ["provider": user.providerID]
                                //self.completeSignIn(id: user.uid, userData: userData)
                            //}
                        }
                    })
                }
            })
            
        }

        
    }

    

}