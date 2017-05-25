//
//  Function.swift
//  2nd friday project2
//
//  Created by 김태형 on 2017. 5. 19..
//  Copyright © 2017년 김태형. All rights reserved.
//

import Foundation

class Function{
    
    
    
    

    func changeMoney(money: Int) -> String{
        
        let exchange = money
        
        let num1000 = exchange / 1000
        let num1000exchange  = exchange - (1000 * num1000)
        let num500 = num1000exchange / 500
        let num500exchange = num1000exchange - (500 * num500)
        
        let num100 = num500exchange / 100
        
        return "거스름돈은 1000원짜리 \(num1000)장, 500원짜리 \(num500)개, 100원짜리 \(num100)개 입니다."
        
    }
    
    func minus(leftMoney:Int, money:Int) -> String
    {
        
        if leftMoney < money{
            return "\(money)원도 없냐.."
        }else{
            
            return "\((leftMoney) - (money))"
            
        }
    }
    
    
    
    
    
    

}
