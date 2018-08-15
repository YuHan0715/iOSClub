//
//  Car.swift
//  iOSClub
//
//  Created by RTC32 on 2018/8/14.
//  Copyright © 2018年 RTC32. All rights reserved.
//

import Foundation

class Car{
    internal var type: String?      //類型
    private var brand: String?     //廠牌
    private var plate: String?     //車牌
    internal var consume: Double?   //耗油量
    internal var capacity: Double?  //油箱大小
    internal var stock: Double?     //油量
    private var miles: Double?     //里程
    internal var passengers: Int?   //乘客
    internal var good: Int?         //貨物
    
    public init(brand: String, plate: String){
        self.type = "汽車"
        self.brand = brand
        self.plate = plate
        self.consume = 1
        self.capacity = 1
        self.stock = capacity
        self.miles = 0
        self.passengers = 0
        self.good = 0
    }
    
    public func setPlate(plate: String){
        if plate.count == 6{
            self.plate = plate
        }
    }
    public func drive(){
        self.miles = self.miles! + (self.stock! * self.consume!)
        self.stock = 0
    }
    
    public func refuel(){
        self.stock = capacity
    }
    
    public func addPassenger(){
        self.passengers? += 1
    }
    
    public func removePassenger(){
        if self.passengers! > 0{
            self.passengers? -= 1
        }
    }
    
    public func addGood(){
        self.good? += 1
    }
    
    public func removeGood(){
        if self.good! > 0{
            self.good? -= 1
        }
    }
    
    public func getType() -> String?{
        return self.type
    }
    
    public func getBrand() -> String?{
        return self.brand
    }
    
    public func getPlate() -> String{
        return self.plate!
    }
    public func getConsume() -> Double{
        return self.consume!
    }
    public func getCapacity() -> Double{
        return self.capacity!
    }
    public func getStock() -> Double{
        return self.stock!
    }
    public func getMiles() -> Double{
        return self.miles!
    }
    public func getPassengers() ->Int{
        return self.passengers!
    }
    public func getGood() -> Int{
        return self.good!
    }
    
    
    
}





