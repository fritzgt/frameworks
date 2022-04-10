//
//  ViewController.swift
//  Calculator
//
//  Created by FGT MAC on 4/3/22.
//

import UIKit
import RPN

class ViewController: UIViewController {
    
    //MARK: - Properties
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.maximumIntegerDigits = 20
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 20
        return formatter
    }()
    
    private var calculator = Calculator() {
        didSet {
            if let value = calculator.topValue {
                textLabel.text = numberFormatter.string(from: value as NSNumber)
            }else{
                textLabel.text = ""
            }
        }
    }
    
    private var digitAccumulator = DigitAccumulator() {
        didSet{
            if let value = digitAccumulator.value() {
                textLabel.text = numberFormatter.string(from: value as NSNumber)
            }else{
                textLabel.text = ""
            }
        }
    }
    
    //MARK: - Outlets
    @IBOutlet weak var textLabel: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.delegate = self
    }

    //MARK: - Actions
    @IBAction func numberButtonTap(_ sender: UIButton) {
        try? digitAccumulator.add(digit: .number(sender.tag))
    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        try? digitAccumulator.add(digit: .decimalPoint)
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        calculator.push(operator: .subtract)
    }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        calculator.push(operator: .multiply)
    }
    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        calculator.push(operator: .divide)
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        calculator.push(operator: .add)
    }
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        if let value = digitAccumulator.value() {
            calculator.push(number: value)
        }
        digitAccumulator.clear()
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        calculator.clearStack()
        digitAccumulator.clear()
        return true
    }
    
    
}
