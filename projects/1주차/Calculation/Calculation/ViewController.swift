//
//  ViewController.swift
//  Calculation
//
//  Created by 김태형 on 2017. 5. 10..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func clickAC(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "AC"
    }

    @IBAction func click0(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "0"
    }
    @IBAction func click1(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "1"
    }
    @IBAction func click2(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "2"
    }
    @IBAction func click4(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "4"
    }
    @IBAction func click3(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "3"
    }
    @IBAction func click5(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "5"
    }
    @IBAction func click6(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "6"
    }
    @IBAction func click(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "."
    }
    @IBAction func click9(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "9"
    }
    @IBAction func click8(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "8"
    }
    @IBAction func click000(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "000"
    }
       @IBAction func click7(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "7"
    }
    @IBAction func 등호(_ sender: UIButton) {
        self.displayLabel.text = "="
    }
    @IBAction func 빼기(_ sender: UIButton) {
        self.displayLabel.text = "-"
    }
    @IBAction func 더하기(_ sender: UIButton) {
        self.displayLabel.text = "+"
    }
    @IBAction func 나누기(_ sender: UIButton) {
        self.displayLabel.text = "/"
    }
    @IBAction func 곱하기(_ sender: UIButton) {
        self.displayLabel.text = "*"
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

