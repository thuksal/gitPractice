//
//  ViewController.swift
//  calculator
//
//  Created by 김태형 on 2017. 5. 14..
//  Copyright © 2017년 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var displayLabel: UILabel!
    
    //AC 클릭시
    
    @IBAction func clickAC(_ sender: UIButton) {
        displayNumber = "0"
        tempFirstNum = 0
        tempSecondNum = 0
        tempOperation = ""
        resultValue = 0
        self.displayLabel.text = String(resultValue)
        
    }

    @IBAction func clickPlusMinus(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "+-"
    }



    @IBAction func clickPont(_ sender: UIButton) {
        let displayingText: String = self.displayLabel.text!
        self.displayLabel.text = displayingText + "."
    }


    @IBAction func clickButton(_ sender: UIButton) {
        addDisplayNumber(numberString:sender.currentTitle!)
        addFirstNumberOrSecondNumber(number:displayNumber)
        
        self.displayLabel.text = displayNumber
    }
    

/*
 밑에 var 정의는 클래스 안에 있는 이상 어디에 있어도 상관없음.
 클래스는 한 덩어리.
 변수와 함수를 일단 알고 있음. 알고 있는게 먼저
 함수는 불리면 그 때 읽힘
 그러므로 함수에서는 순서대로 읽히니까 변수 위치 중요하지만 클래스 안에서는 상관없음.
 */
    
    // MARK: - touchseven
    
    var tempFirstNum:Int = 0
    var tempSecondNum:Int = 0
    var tempOperation:String = ""
    var displayNumber:String = "0"

    var resultValue:Int = 0
    
    @IBAction func clickEqual(_ sender: UIButton) {
        
        switch tempOperation{
        case "+":
            resultValue = plus(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "*":
            resultValue = multiple(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "/":
            resultValue = divide(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "-":
            resultValue = minus(firstNum: tempFirstNum, secondNum: tempSecondNum)
        default:
            resultValue = 0
        }
        displayLabel.text = "\(resultValue)"
        tempFirstNum = 0
        tempSecondNum = 0
        tempOperation = ""
        displayNumber = "0"
    }
    
    // 빼기 버튼 클릭시
    
    
    @IBAction func clickMinus(_ sender: UIButton) {
        if resultValue != 0{
            tempFirstNum = resultValue
        }
        updateTempOperation(operation: sender.currentTitle!)
    }
    //곱하기 버튼 클릭시
    
    @IBAction func clickMultiple(_ sender: UIButton){
        if resultValue != 0{
            tempFirstNum = resultValue
        }
        
        updateTempOperation(operation: sender.currentTitle!)
    }
    
    //나누기 버튼 클릭시
   

    @IBAction func clickDivided(_ sender: UIButton) {
        if resultValue != 0{
            tempFirstNum = resultValue
        }
        
        updateTempOperation(operation: sender.currentTitle!)
    }
    
    //플러스 버튼 클릭시
    
    @IBAction func touchUpInsidePlusBtn(_ sender:UIButton){
        if resultValue != 0{
            tempFirstNum = resultValue
        }
        
        updateTempOperation(operation: sender.currentTitle!)
    }
    
    // 곱하기 함수
    func multiple(firstNum:Int, secondNum:Int) -> Int{
        return firstNum * secondNum
    }
    
    // 더하기 함수
    
    func plus(firstNum:Int, secondNum:Int) -> Int{
        return firstNum + secondNum
    }
    
    // 나누기 함수
    
    func divide(firstNum:Int, secondNum:Int) -> Int{
        return firstNum / secondNum
    }
    
    // 빼기 함수
    
    func minus(firstNum:Int, secondNum:Int) -> Int{
        return firstNum - secondNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// 기호를 넣어주고 기호 라벨을 업데이트 합니다.
    func updateTempOperation(operation:String){
        tempOperation = operation
        displayNumber = "0"
        

    }
    //display 변경
    
    func addDisplayNumber(numberString:String){
        switch displayNumber{
        case "0":
            displayNumber = numberString
        default:
            displayNumber += numberString
        }
    }
    func addFirstNumberOrSecondNumber(number:String){
        // 첫번째 숫자 두번째 숫자
        if tempOperation.isEmpty {
            // 첫번째 숫자
            tempFirstNum = Int(displayNumber)!
            
            
            //"!"는 이 변수가 절대 nil이 될 수 없어! 라는 의미입니다. 개발자의 보증수표랄까..
            //displayLabel.text는 절대 nil이 될 수 없고, String 값이 Int가 될 때도 String에 문자만 있을리 없어라고 이야기하는 의미입니다.
        }else{
            // 두번째 숫자
            tempSecondNum = Int(displayNumber)!
        }
    }
}
