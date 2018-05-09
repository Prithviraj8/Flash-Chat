//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    var messageArray : [Message] = [Message]()

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        if (Auth.auth().currentUser != nil) {
            performSegue(withIdentifier: "ContactCell", sender: nil)
        }
    }

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        
         SVProgressHUD.show()
        
        //TODO: Set up a new user on our Firbase database
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
        /*   This is a closure. A closure is a function with no name. Therefore when performing a Segue in a closure always remember to add a
             self.  before performSegue method as done below.  */
            (user, error) in
            
            if error != nil  {
                print(error!)
                self.alertTheUser(title: "Email and Password required", message: "Please enter email and password")
                
            } else {
                //Success
                print("Registration Successful")
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
            }
        }
        
        
    }
    
    private func alertTheUser(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OK)
        present(alert, animated: true, completion: nil)

    }
    
}
