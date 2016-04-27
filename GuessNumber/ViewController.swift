//
//  ViewController.swift
//  GuessNumber
//
//  Created by Steven Wang on 2016/4/27.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var inputNumberField: UITextField!
    
    @IBOutlet weak var showMessageField: UILabel!
    

    @IBOutlet weak var sumTimesLabel: UILabel!
    
    var value2:Int = 0
    @IBAction func comfirmButton(sender: AnyObject) {
        let value1 = "5"
        
        
       
    if value2 < 6 {
        
        if let guessNumber = inputNumberField.text {
            
            if Int(guessNumber) <= 10 {
                if Int(guessNumber) > 0 {
                    if guessNumber == value1 {
                        showMessageField.text="正確"
                        value2 = value2 + 1
                        sumTimesLabel.text="\(value2)"
                        
                    }
                    else {
                        showMessageField.text="不正確"
                        value2 = value2 + 1
                        sumTimesLabel.text="\(value2)"
                    }
                }
                }
    
        else {
            showMessageField.text="輸入範圍1~10"
        }
    }
        
        
    }
     else {
           showMessageField.text="超過6次"
        }   
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

