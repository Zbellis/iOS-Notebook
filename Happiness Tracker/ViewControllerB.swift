//
//  ViewControllerB.swift
//  Happiness Tracker
//
//  Created by Zachary Ellis on 6/3/21.
//

import UIKit

class ViewControllerB: UIViewController {
    @IBOutlet weak var myLbl: UILabel!
    
    var myString = String()
    var myEmoji = String()
    
    @IBOutlet weak var emojiLblPassed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLbl.text = myString
        emojiLblPassed.text = myEmoji
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
