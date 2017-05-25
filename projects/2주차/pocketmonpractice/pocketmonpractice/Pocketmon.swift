//
//  Pocketmon.swift
//  pocketmonpractice
//
//  Created by 김태형 on 2017. 5. 18..
//  Copyright © 2017년 김태형. All rights reserved.
//

import Foundation

class Pocketmon {
    
    var hp:Double = 100
    var name:String
    var recover:Double
    var exp:Double = 0
    var type:String
    
    init(name:String, recover:Double, type:String){
        self.name = name
        self.recover = recover
        self.type = type
    }
}
