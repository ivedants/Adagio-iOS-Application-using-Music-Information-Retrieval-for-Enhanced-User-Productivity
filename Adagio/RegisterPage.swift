//
//  RegisterPage.swift
//  Adagio
//
//  Created by Vedant Shrivastava on 02/04/18.
//  Copyright © 2018 Vedant Shrivastava. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth


class RegisterPage: UIViewController
{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    @IBAction func createAccountAction(_ sender: Any)
    {
    
         if emailTextField.text == "" {
         let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
         
         let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
         alertController.addAction(defaultAction)
         
         present(alertController, animated: true, completion: nil)
         
         } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
         
         if error == nil {
         print("You have successfully signed up")
         //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
         
         let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
         self.present(vc!, animated: true, completion: nil)
         
         } else {
         let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
         
         let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
         alertController.addAction(defaultAction)
         
         self.present(alertController, animated: true, completion: nil)
         }
         }
         }
        
    }
}
