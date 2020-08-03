//
//  ChooseLearnViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/24/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit

class ChooseLearnViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func homeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToLearn", sender: self)
    }
    
    @IBAction func forehandsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToForehands", sender: self)
    }
    
    
    @IBAction func backhandsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToBackhands", sender: self)
    }
    
    @IBAction func servesButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToServes", sender: self)
    }
    
    @IBAction func modifiedButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToModified", sender: self)
    }
    
    
    @IBAction func volleysButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToVolleys", sender: self)
    }
    
    
    @IBAction func slicesButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToSlices", sender: self)
    }
    
    
    @IBAction func strategyButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "chooseToStrategy", sender: self)
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
        if segue.identifier == "chooseToVolleys" {
            _ = segue.destination as! LearnVolleysViewController
        }
        if segue.identifier == "chooseToSlices" {
            _ = segue.destination as! LearnSlicesViewController
        }
        if segue.identifier == "chooseToStrategy" {
            _ = segue.destination as! LearnStrategyViewController
        }
        if segue.identifier == "chooseToModified" {
            _ = segue.destination as! LearnModifiedViewController
        }
        if segue.identifier == "chooseToForehands" {
            _ = segue.destination as! LearnForehandsViewController
        }
        if segue.identifier == "chooseToLearn" {
            _ = segue.destination as! LearnViewController
        }
        if segue.identifier == "chooseToServes" {
            _ = segue.destination as! LearnServesViewController
        }
        if segue.identifier == "chooseToBackhands" {
            _ = segue.destination as! LearnBackhandsViewController
        }
        
        
    }

}
