//
//  EditProfileViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/24/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "editToProfile", sender: self)
    }
    
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "editToProfile", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editToProfile" {
            _ = segue.destination as! YourProfileViewController
        }
        
    }

}
