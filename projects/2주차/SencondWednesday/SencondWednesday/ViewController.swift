//
//  ViewController.swift
//  SencondWednesday
//
//  Created by 김태형 on 2017. 5. 17..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func runButtonTouched(_ sender: UIButton) {
        
        let numb: Int = Int(self.inputTextField.text!)!
        
        self.resultLabel.text = totalYaksu(number: numb)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isEven(number num:Int){
        if num % 2 == 0 {
            self.resultLabel.text = "짝수입니다."
        }else{
            self.resultLabel.text = "홀수입니다."
        }
    }
    
    func totalYaksu(number num:Int) -> String{
        var totalNum:Int = 0
        if num <= 2{
            return "잘못된 입력값입니다."
        }else{
            for i in 2...(num-1){
                if num % i == 0{
                    totalNum += i
                }
            }
            return "\(totalNum)"
        }
    }
    
    
}
