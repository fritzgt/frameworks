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
    
//    private var calculator = Calculator() {
//        didSet {
////            if let value = calculator.
//        }
//    }
    
    //MARK: - Outlets
    @IBOutlet weak var textLabel: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.delegate = self
    }

    //MARK: - Actions
    @IBAction func numberButtonTap(_ sender: UIButton) {
        print(sender.tag)
    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func deviceButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func returnButtonTapped(_ sender: Any) {
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    
}
