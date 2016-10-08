//
//  DetalleBebida.swift
//  Bartender
//
//  Created by Victor Hugo Vázquez Riojas on 10/5/16.
//  Copyright © 2016 Victor Hugo Vázquez Riojas. All rights reserved.
//

import UIKit

class DetalleBebida: UIViewController {
    var info:NSDictionary?

    @IBOutlet weak var imgDrinking: UIImageView!
    
    @IBOutlet weak var txtIngredients: UITextView!
     @IBOutlet weak var txtDirections: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    override func viewWillAppear(animated: Bool) {
    
        self.txtIngredients.text = info?["ingredients"] as! String
        self.txtDirections.text = info?["directions"] as! String
        self.imgDrinking.image = UIImage(named: info?["image"] as! String)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
