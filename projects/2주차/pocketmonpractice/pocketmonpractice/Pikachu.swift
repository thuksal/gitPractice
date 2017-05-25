//
//  Pikachu.swift
//  pocketmonpractice
//
//  Created by 김태형 on 2017. 5. 18..
//  Copyright © 2017년 김태형. All rights reserved.
//

import Foundation
class Pikachu: Pocketmon{
    var skills:[[String:Any]] = [["name":"전기충격","damage":10],["name":"몸통박치기","damage":12]]
   
    init(){
        super.init(name: "피카츄", recover: 8, type: "전기")
    }
    
    
}
