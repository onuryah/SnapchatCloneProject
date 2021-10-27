//
//  SettingsVC.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 27.10.2021.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func logoutCuttonClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil)
        }catch {
            
        }
        
    }
    
    

}
