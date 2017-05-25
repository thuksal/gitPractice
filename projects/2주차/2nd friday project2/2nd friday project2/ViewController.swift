//
//  ViewController.swift
//  2nd friday project2
//
//  Created by 김태형 on 2017. 5. 19..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //프로퍼티 정리

    @IBOutlet weak var notEnoughMoney: UILabel!
    
    @IBOutlet weak var pushMoney: UITextField!
    
    @IBOutlet weak var exchangeManager: UILabel!
    
    @IBOutlet weak var pullMoney: UILabel!
    
    var clickButton:Bool = false
   
    let funct:Function = Function()
    
    var currentPullMoney:Int?
    
    //액션 정리
    
    
    @IBAction func push(_ sender: UIButton) {
        
        clickButton = true
        self.notEnoughMoney.text = ""
        self.exchangeManager.text = "거스름돈~"
        let total = Int(self.pullMoney.text!)! + Int(self.pushMoney.text!)!
        self.pullMoney.text = "\(total)"
        self.pushMoney.text = "0"
        
    }
    

    
    @IBAction func pull(_ sender: UIButton) {
       
        exchangeManager.text = funct.changeMoney(money: Int(self.pullMoney.text!)!)
        self.pullMoney.text = "0"
        
        
    }
    


    @IBAction func lambo(_ sender: UIButton) {
        
        currentPullMoney = Int(self.pullMoney.text!)!
        if clickButton == false{
            self.notEnoughMoney.text = "돈 안 넣냐"
        }else if currentPullMoney! >= sender.tag{
            self.pullMoney.text = funct.minus(leftMoney: currentPullMoney!, money:sender.tag)
        }else{
            self.notEnoughMoney.text = funct.minus(leftMoney: currentPullMoney!, money:sender.tag)
        }
        
    }

    // 요기까지
   
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

}

