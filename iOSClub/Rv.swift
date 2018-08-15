//
//  Rv.swift
//  iOSClub
//
//  Created by RTC32 on 2018/8/15.
//  Copyright © 2018年 RTC32. All rights reserved.
//

import Foundation

class Rv: Car{
    
    override init(brand: String, plate: String) {
        super.init(brand: brand, plate: plate)
        self.type = "休旅車"
        self.capacity = 50
        self.stock = self.capacity
        consume = 10
    }
    
    override func addPassenger() {  //用internal可以直接改數值
        if passengers! < 6{
            passengers? += 1
        }
    }
    
    override func addGood() {  //用private只能呼叫func
        if super.getGood() < 3{
            super.addGood()
        }
    }
}
