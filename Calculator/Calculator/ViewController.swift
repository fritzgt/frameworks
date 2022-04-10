//
//  ViewController.swift
//  Calculator
//
//  Created by FGT MAC on 4/3/22.
//

import UIKit
import RPN

class ViewController: UIViewController, UITextFieldDelegate {
    
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

