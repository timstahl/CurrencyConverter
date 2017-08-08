//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by TIM STAHL on 8/3/17.
//  Copyright © 2017 TIM STAHL. All rights reserved.
//
//test
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0


    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    @IBAction func clearText(_ sender: UIButton) {
        inputTextField.text = ""
    }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    
    // Called when "return" key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when "user" taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // Clear Button to Clear Text Field
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

