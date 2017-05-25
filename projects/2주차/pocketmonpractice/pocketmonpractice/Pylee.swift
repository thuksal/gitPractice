//
//  Pylee.swift
//  pocketmonpractice
//
//  Created by 김태형 on 2017. 5. 18..
//  Copyright © 2017년 김태형. All rights reserved.
//

import Foundation

class Pylee: Pocketmon{
    
    var exp = 0
    
    override init(){
        super.init(name: "파이리", recover: 9, hp: 120, attackPower: 8)
        
    }
    
    func evelution(){
        Action.attack()
    }
}
