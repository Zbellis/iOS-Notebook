//
//  ViewController.swift
//  Happiness Tracker
//
//  Created by Zachary Ellis on 5/28/21.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.save(value: "Test1")
        self.save(value: "Test2")
        self.save(value: "Test3")

        self.retrieveValues()
        
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController {
    func save(value: String) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let context = appDelegate.persistentContainer.viewContext
            
            guard let entityDescription = NSEntityDescription.entity(forEntityName: "TestEntity", in: context) else {return}
            
            let newValue = NSManagedObject(entity: entityDescription, insertInto: context)
            
            newValue.setValue(value, forKey: "testValue")
            
            do {
                try context.save()
                print("Saved: \(value)")
            } catch {
                print("Saving error")
            }
        }
    }
    
    func retrieveValues() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let context = appDelegate.persistentContainer.viewContext

            let fetchRequest = NSFetchRequest<TestEntity>(entityName: "TestEntity")
            
            do {
                let results = try context.fetch(fetchRequest)
                
                for result in results {
                    if let testValue = result.testValue {
                        print(testValue)
                    }
                }
            }
            
            catch {
                print("failed")
            }
        }
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





