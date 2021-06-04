//
//  ViewController.swift
//  Happiness Tracker
//
//  Created by Zachary Ellis on 5/28/21.
//

import UIKit
import CoreData


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emojiLbl: UILabel!
    
    @IBOutlet weak var happinessDescription: UITextField!
    
    @IBAction func slider(_ sender: UISlider) {
        emojiLbl.isHidden = false
        switch Int(sender.value) {
        case 1:
            emojiLbl.text = "😡"
        case 2:
            emojiLbl.text = "😪"
        case 3:
            emojiLbl.text = "😅"
        case 4:
            emojiLbl.text = "🙂"
        case 5:
            emojiLbl.text = "😌"
        case 6:
            emojiLbl.text = "😄"
        case 7:
            emojiLbl.text = "😁"
        default:
            emojiLbl.text = "🙂"
        }
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        happinessDescription.delegate = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! ViewControllerB
        secondController.myString = happinessDescription.text!
        secondController.myEmoji = emojiLbl.text!
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





