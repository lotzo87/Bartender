//
//  ViewController.swift
//  Bartender
//
//  Created by Victor Hugo Vázquez Riojas on 10/3/16.
//  Copyright © 2016 Victor Hugo Vázquez Riojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    
    @IBAction func btnEnter(sender: AnyObject) {
        if (self.txtUser.text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) != "" && self.txtPwd.text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) != ""){
                performSegueWithIdentifier("segueVal",sender:self)
        }
        
        
        let ac:UIAlertController = UIAlertController(title: "ERROR", message: "Todos los campos son requeridos", preferredStyle: .Alert )
        let bac  = UIAlertAction(title: "OK", style: .Default, handler: nil)
        ac.addAction(bac)
        self.presentViewController(ac, animated: true, completion: nil)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        txtUser.resignFirstResponder()
        txtPwd.resignFirstResponder()
        
    }
}

