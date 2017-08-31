//
//  ViewController.swift
//  Third App
//
//  Created by Juan García on 8/29/17.
//  Copyright © 2017 JAG.media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func checkButton(_ sender: UIButton) {
        var input = Int()
        var prime = true
        
        if let userEnteredString = numberField.text {
            let userEnteredInt = Int(userEnteredString)
            if let number = userEnteredInt {
                prime = true
                if number == 0 || number == 1 {
                    prime = false
                }
                input = number; if input == 2 {
                    prime = true
                }
                
                for i in stride(from: 2, to: input, by: 1) {
                    if input % i == 0{
                        prime = false
                    }
                }
                
                if prime == true {
                    answerLabel.text = ("Is prime")
                } else {
                    answerLabel.text = ("Is not prime")
                }
                
            }else {
                answerLabel.text = ("Please enter a number")
        }
        }
        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.setGradienBackground(colorOne: Colors.brigtBlue, colorTwo: Colors.darkBlue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

