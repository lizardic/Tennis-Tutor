//
//  PlayerFilterViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/24/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit

class PlayerFilterViewController: UIViewController {
    @IBOutlet weak var proximityValue: UILabel!
    @IBOutlet weak var utrValue: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    
     @IBAction func proximityValueChange(_ sender: UISlider) {
        let milesAmount = String(format: "%.0f", sender.value)
         proximityValue.text = "\(milesAmount) miles"
     }
     
     @IBAction func utrValueChange(_ sender: UISlider) {
        let utrRating = String(format: "%.0f", sender.value)
         utrValue.text = "\(utrRating)"
     }
     

    @IBAction func doneButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "filterToPlay", sender: self)
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
        if segue.identifier == "filterToPlay" {
            _ = segue.destination as! PlayViewController

        }
        
    }
}
