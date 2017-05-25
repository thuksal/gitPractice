//
//  ViewController.swift
//  pocketmonpractice
//
//  Created by 김태형 on 2017. 5. 18..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var hpLabel2: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBAction func choosePikachu(_ sender: UIButton) {
        if nameLabel.text == "포켓몬"{
            
        self.nameLabel.text = "피카츄"
        self.htpLabel.text = Pikachu.hp
            
        }else{
            self.nameLabel2.text = "피카츄"
        }
        
    }
    
    @IBAction func chooseGgobugi(_ sender: UIButton) {
        
        self.nameLabel.text = "Ggobugi"
        
    }
    
    @IBAction func choosePylee(_ sender: UIButton)  {
        
        self.nameLabel.text = "Pylee"
    }
    
    
    @IBAction func runButtonTouched(_ sender: UIButton) {
        
        Action.attack(monster:Ggobugi, )
        
        
        
        let numb: Int = Int(self.inputTextField.text!)!
        
        self.resultLabel.text = (number: numb)
    }
    @IBAction func runButtonTouched2(_ sender: UIButton) {
        
        let numb: Int = Int(self.inputTextField.text!)!
        
        self.resultLabel.text = (number: numb)
    }
    @IBAction func runButtonTouched3(_ sender: UIButton) {
        
        let numb: Int = Int(self.inputTextField.text!)!
        
        self.resultLabel.text = (number: numb)
    }
    @IBAction func runButtonTouched4(_ sender: UIButton) {
        
        let numb: Int = Int(self.inputTextField.text!)!
        
        self.resultLabel.text = (number: numb)
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

