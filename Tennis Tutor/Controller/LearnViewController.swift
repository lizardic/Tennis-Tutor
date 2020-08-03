//
//  ViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/8/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController {

    @IBOutlet weak var learnLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "learnToChoose", sender: self)
    }
    
    @IBAction func learnButtonPressed(_ sender: UIButton) {
        print("already on this page")
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "learnToPlay", sender: self)
    }
}

