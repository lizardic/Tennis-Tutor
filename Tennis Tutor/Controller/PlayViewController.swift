//
//  PlayViewController.swift
//  Tennis Tutor
//
//  Created by Christian Lizardi on 7/18/20.
//  Copyright © 2020 Tennis Tutor. All rights reserved.
//

import UIKit
import CoreLocation

class PlayViewController: UIViewController {

    @IBOutlet weak var playLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!

    @IBOutlet weak var searchTextField: UITextField!
    
    let locationManager = CLLocationManager()
    var locationUpdater = LocationUpdater()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchTextField.delegate = self
        locationUpdater.delegate = self
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    @IBAction func profileButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "playToProfile", sender: self)
        
    }
    @IBAction func filtersButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "playToFilter", sender: self)
    }
   
    @IBAction func learnButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "playToLearn", sender: self)
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        print("already on this page")
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
        if segue.identifier == "playToLearn" {
            _ = segue.destination as! LearnViewController
        }
        if segue.identifier == "learnToPlay" {
            _ = segue.destination as! PlayViewController
        }
        
    }
}
//MARK: - UITextFieldDelegate
extension PlayViewController: UITextFieldDelegate {
    
       @IBAction func searchButtonPressed(_ sender: UIButton) {
           searchTextField.endEditing(true)
            locationManager.requestLocation()
       }
       
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           searchTextField.endEditing(true)
           return true
       }
       
       func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
           return true
       }
       
       func textFieldDidEndEditing(_ textField: UITextField) {
           //Use the searchTextField.text to do whatever you need
           searchTextField.text = ""
       }
    
}

//MARK: - CLLocationManagerDelegate

extension PlayViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //called when location is updated
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            locationUpdater.applyLocation(location) //calls didUpdateLocation
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        //called when location fails to update
        print(error)
    }
    
}

//MARK: - LocationUpdaterDelegate

extension PlayViewController: LocationUpdaterDelegate {
    func didUpdateLocation(_ locationUpdater: LocationUpdater, _ location: CLLocation) {
        //use location
        print(location)
    }

    func didFailWithError(error: Error) {
        print(error)
    }
}
