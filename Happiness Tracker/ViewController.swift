//
//  ViewController.swift
//  Happiness Tracker
//
//  Created by Zachary Ellis on 5/28/21.
//

import UIKit
import CoreData


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var happinessLbl: UILabel!
    
    @IBOutlet weak var happinessDescription: UITextField!
    
    @IBAction func slider(_ sender: UISlider) {
        
        happinessLbl.isHidden = false
        
        switch Int(sender.value) {
        case 1:
            happinessLbl.text = "😡"
        case 2:
            happinessLbl.text = "😪"
        case 3:
            happinessLbl.text = "😅"
        case 4:
            happinessLbl.text = "🙂"
        case 5:
            happinessLbl.text = "😌"
        case 6:
            happinessLbl.text = "😄"
        case 7:
            happinessLbl.text = "😁"
        default:
            happinessLbl.text = "🙂"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        happinessDescription.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}




/*   Label that will display the Date and it's function
 
 
 
 @IBOutlet weak var uiLabel: UILabel!
 
 @IBAction func getDateAndTime(Sender: UIButton){
         let dateFormatter = DateFormatter();
         dateFormatter.dateFormat = "yyyy-MM-dd hh:mm::ss"
         
         let date = dateFormatter.string(from: Date())
         
         self.uiLabel.text = date
     }
 
 https://programmerworld.co/ios/how-to-get-current-date-and-time-in-your-ios-app-xcode-tutorial/
 
 
 */





