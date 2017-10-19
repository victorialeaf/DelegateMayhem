//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Victoria Leaf on 10/17/17.
//  Copyright © 2017 Victoria Leaf. All rights reserved.
//

import UIKit

protocol DataSentDelegate{
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {

  
   
    @IBOutlet weak var dataEntryTextField: UITextField!

    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil{
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
    
        }
        
  
    }
    
    
    }

    




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



