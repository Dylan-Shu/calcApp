//
//  ViewController.swift
//  Calculator
//
//  Created by Dylan Shu on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    var calcBrain = CalcBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var NumberOnScreen: Double = 0;
    var PreviousNumber: Double = 0;
    var operation = 0;
    var PerformOperation = false
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBAction func btnNumClick(_ sender: UIButton) {
        if lblOutput.text == "0" {
            lblOutput.text = ""
        }
        
        if PerformOperation == true {
            if sender.tag == 10 {
                lblOutput.text = "."
            }
            else {
                lblOutput.text = String(sender.tag)
            }
            NumberOnScreen = Double(lblOutput.text!)!
            calcBrain.NumberOnScreen = NumberOnScreen
            PerformOperation = false
        }
        else {
            if sender.tag == 10 {
                lblOutput.text = lblOutput.text! + "."
            }
            else {
                lblOutput.text = lblOutput.text! + String(sender.tag)
            }
           NumberOnScreen = Double(lblOutput.text!)!
           calcBrain.NumberOnScreen = NumberOnScreen        }
    }
    
    @IBAction func btnOperationClick(_ sender: UIButton) {
        if lblOutput.text != "" && sender.tag != 11 && sender.tag != 16
        {
            PreviousNumber = Double(lblOutput.text!)!
            calcBrain.PreviousNumber = PreviousNumber
            if sender.tag == 12 {
                lblOutput.text = "/";
            }
            if sender.tag == 13 {
                lblOutput.text = "*";
            }
            if sender.tag == 14 {
                lblOutput.text = "-";
            }
            if sender.tag == 15 {
                lblOutput.text = "+";
            }
            if sender.tag == 17 {
                lblOutput.text = "%"
            }
            if sender.tag == 18 {
                lblOutput.text = "+/-"
            }
            operation = sender.tag;
            PerformOperation = true;
            }
            else if sender.tag == 16 {
                if operation == 12 {
                    calcBrain.division()
                    lblOutput.text = calcBrain.displayValue
                }
                else if operation == 13 {
                    calcBrain.multiplication()
                    lblOutput.text = calcBrain.displayValue
                }
                else if operation == 14 {
                    calcBrain.subtraction()
                    lblOutput.text = calcBrain.displayValue
                }
                else if operation == 15 {
                    calcBrain.addition()
                    lblOutput.text = calcBrain.displayValue
                }
                else if operation == 17 {
                    calcBrain.divideBy100()
                    lblOutput.text = calcBrain.displayValue
                }
                else if operation == 18 {
                    calcBrain.negativeFunc()
                    lblOutput.text = calcBrain.displayValue
                }
            }
            else if sender.tag == 11 {
                calcBrain.clearAll()
                lblOutput.text = calcBrain.displayValue
                PreviousNumber = 0;
                NumberOnScreen = 0;
                operation = 0;
                PerformOperation = false;
            }
        }
    }
