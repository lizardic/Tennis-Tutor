//
//  LearnStrategyViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/24/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit

class LearnStrategyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func learnButtonPressed(_ sender: UIButton) {
        print("already on this page")
    }
    @IBAction func playButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "strategyToPlay", sender: self)
    }
    @IBAction func strategyButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "strategyToChoose", sender: self)
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
        if segue.identifier == "strategyToChoose" {
            _ = segue.destination as! ChooseLearnViewController
        }
        if segue.identifier == "strategyToPlay" {
            _ = segue.destination as! PlayViewController
        }
        
    }

}
