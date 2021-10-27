//
//  ViewController.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 26.10.2021.
//

import UIKit
import Firebase

class SignInVC : UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signInButtonClicked(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != ""{
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { result, error in
                if error != nil{
                    self.makeAlert(title: "ERROR!", message: error?.localizedDescription ?? "Error")
                }else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }else {
            makeAlert(title: "ERROR!", message: "Email/Password ?")
        }
    }
    
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
        if emailTextField.text != "" && usernameTextField.text != "" && passwordTextField.text != "" {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { auth, error in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error!")
                }else {
                    let fireStore = Firestore.firestore()
                    let userDictionary = ["email" : self.emailTextField.text!, "username" : self.usernameTextField.text!]
                    fireStore.collection("UserInfo").addDocument(data: userDictionary) { error in
                        if error != nil {
                            self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                        }
                    }
                }
            }
        }else {
            makeAlert(title: "ERROR!", message: "Email/Username/Password ?")
        }
    }
    
    func makeAlert(title : String, message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    

}

