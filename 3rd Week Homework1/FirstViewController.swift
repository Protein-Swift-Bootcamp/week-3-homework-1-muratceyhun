//
//  FirstViewController.swift
//  3rd Week Homework1
//
//  Created by Murat Ceyhun Korpeoglu on 22.12.2022.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var labelSwiftVersion: UILabel!
    
    @IBOutlet weak var labelXcodeVersion: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

  
        

    }

    
    
    @IBAction func pressButtonClicked(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        self.present(destinationVC, animated: true, completion: nil)
        
        destinationVC.delegate = self
        
        
    }
    
    

}


extension FirstViewController : TransferData {
    
    
    func showInfoSwift(myInfo: String) {
        labelSwiftVersion.text = myInfo
    }
    
    func showInfoXcode(myInfo: String) {
        labelXcodeVersion.text = myInfo
    }
    
}




