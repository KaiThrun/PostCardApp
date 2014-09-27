 //
//  ViewController.swift
//  Postcard
//
//  Created by Kai Thrun on 20.09.14.
//  Copyright (c) 2014 KaiThrun.de. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when we press the button
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextfield.text
        enterAMessageTextfield.text = ""
        enterAMessageTextfield.resignFirstResponder()
        messageLabel.textColor = UIColor.brownColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

