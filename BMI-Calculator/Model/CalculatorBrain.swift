//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Dmitry M. on 7/1/22.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DescimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DescimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more meat!", color: #colorLiteral(red: 0.2692191981, green: 0.4765820052, blue: 1, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.3522289573, blue: 0.4660304762, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fitty!", color: #colorLiteral(red: 0.3779790181, green: 1, blue: 0.5001292899, alpha: 1))
        }
    }
}
