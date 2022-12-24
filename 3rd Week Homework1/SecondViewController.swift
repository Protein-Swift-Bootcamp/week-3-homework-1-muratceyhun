//
//  SecondViewController.swift
//  3rd Week Homework1
//
//  Created by Murat Ceyhun Korpeoglu on 23.12.2022.
//

import Foundation
import UIKit



protocol TransferData {
    
    func showInfoSwift(myInfo : String)
    func showInfoXcode(myInfo : String)
}



class SecondViewController : UIViewController {
    
    
    var delegate : TransferData? = nil

    
    @IBOutlet weak var swiftTextField: UITextField!
    @IBOutlet weak var xcodeTextField: UITextField!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "daffas"

        
        
        
        

    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        
        
        if self.delegate != nil {
            
        
            
            guard let swiftInfo = swiftTextField.text else { return }
            guard let xcodeInfo = xcodeTextField.text else { return }

            
            self.delegate?.showInfoSwift(myInfo: swiftInfo)
            self.delegate?.showInfoXcode(myInfo: xcodeInfo)


            
            dismiss(animated: true, completion: nil)
            
            
            
        }
        
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "firstVC") as! FirstViewController
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true, completion: nil)
     

        
        
        
    }
    
    
}
