//
//  ViewController.swift
//  Custom Alert
//
//  Created by Saboor on 24/01/2020.
//  Copyright © 2020 Saboor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myAlertMessege: UITextField!
    @IBOutlet weak var myAlert: UIButton!
    @IBAction func myAlertBtn(_ sender: Any) {
        
        // calling alert function
        createAlert(title: "ALERT !", messege: myAlertMessege.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createAlert (title:String, messege:String)
    {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: UIAlertControllerStyle.alert)
        
        // creating button
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        // presentin alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    

}

