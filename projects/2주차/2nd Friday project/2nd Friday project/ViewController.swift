//
//  ViewController.swift
//  2nd Friday project
//
//  Created by 김태형 on 2017. 5. 19..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var clickButton:Bool = false
    
    @IBAction func lamborghini(_ sender: UIButton) {
        let numb2: Int = Int(self.pullMoney.text!)!
        if clickButton == false && numb2 == 0{
            self.notEnoughMoney.text = "돈 안 넣냐"
        }else if numb2 < 500{
            self.notEnoughMoney.text = "500원도 없냐.."
        }else{
            self.pullMoney.text = "\((numb2) - 500)"
        }
            
    
        
       
        
        
        
    }
    
    @IBAction func audi(_ sender: UIButton) {
        let numb2: Int = Int(self.pullMoney.text!)!
        if clickButton == false && numb2 == 0{
            self.notEnoughMoney.text = "돈 안 넣냐"
        }else if numb2 < 600{
            self.notEnoughMoney.text = "600원도 없냐.."
        }else{
            self.pullMoney.text = "\((numb2) - 600)"
        }
    }
    

    @IBAction func porsche(_ sender: UIButton) {
        let numb2: Int = Int(self.pullMoney.text!)!
        if clickButton == false && numb2 == 0{
            self.notEnoughMoney.text = "돈 안 넣냐"
        }else if numb2 < 800{
            self.notEnoughMoney.text = "800원도 없냐.."
        }else{
            self.pullMoney.text = "\((numb2) - 800)"
        }    }
    
    @IBAction func ferrari(_ sender: UIButton) {
        let numb2: Int = Int(self.pullMoney.text!)!
        if clickButton == false && numb2 == 0{
            self.notEnoughMoney.text = "돈 안 넣냐"
        }else if numb2 < 1000{
            self.notEnoughMoney.text = "1000원도 없냐.."
        }else{
            self.pullMoney.text = "\((numb2) - 1000)"
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pull(_ sender: UIButton) {
        
        let exchange = Int(self.pullMoney.text!)!
        
        let num1000 = exchange / 1000
        let num1000exchange  = exchange - (1000 * num1000)
        let num500 = num1000exchange / 500
        let num500exchange = num1000exchange - (500 * num500)
        
        let num100 = num500exchange / 100
        
        self.exchangeManager.text = "거스름돈은 1000원짜리 \(num1000)장, 500원짜리 \(num500)개, 100원짜리 \(num100)개 입니다."
        self.pullMoney.text = "0"
        
        
    }
    @IBAction func push(_ sender: UIButton) {
        clickButton = true
        self.notEnoughMoney.text = ""
        self.exchangeManager.text = "거스름돈~"
        let total = Int(self.pullMoney.text!)! + Int(self.pushMoney.text!)!
        self.pullMoney.text = "\(total)"
        self.pushMoney.text = "0"
        
    }
    @IBOutlet weak var notEnoughMoney: UILabel!

    @IBOutlet weak var pushMoney: UITextField!

    @IBOutlet weak var pullMoney: UILabel!
    
    @IBOutlet weak var exchangeManager: UILabel!
    
}

