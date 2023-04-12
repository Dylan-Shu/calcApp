//
//  CalcBrain.swift
//  Calculator
//
//  Created by Dylan Shu on 4/3/23.
//

import Foundation

class CalcBrain {
    var NumberOnScreen: Double = 0;
    var PreviousNumber: Double = 0;
    var answer: Double = 0;
    var displayValue: String = "";
    
    func addition() {
        answer = NumberOnScreen + PreviousNumber;
        displayValue = String(answer);
    }
    
    func subtraction() {
        answer = NumberOnScreen - PreviousNumber;
        displayValue = String(answer);
    }
    
    func multiplication() {
        answer = NumberOnScreen * PreviousNumber;
        displayValue = String(answer);
    }
    
    func division() {
        answer = NumberOnScreen / PreviousNumber;
        displayValue = String(answer);
        if displayValue == "inf" {
            displayValue = "ERROR";
        }
    }
    
    func negativeFunc() {
        answer = PreviousNumber * (-1);
        displayValue = String(answer);
    }
    
    func divideBy100() {
        answer = PreviousNumber / 100;
        displayValue = String(answer)
    }
    
    func clearAll() {
        displayValue = "0";
        PreviousNumber = 0;
        NumberOnScreen = 0;
    }
}
