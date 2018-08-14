//
//  ViewController.swift
//  iOSClub
//
//  Created by RTC32 on 2018/8/14.
//  Copyright © 2018年 RTC32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var plate: UITextField!
    @IBOutlet weak var consume: UILabel!
    @IBOutlet weak var passenger: UILabel!
    @IBOutlet weak var good: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var cars = [Car(brand:"Honda", plate: "AP-123"),
                Car(brand:"Toyota",plate: "GG-3B0"),
                Car(brand:"Mazda", plate: "MM-204"),
                Car(brand:"Ford", plate: "QQ-506"),
                Car(brand:"Lexus", plate: "RR-693")]
    
    var choose = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = Float(cars.count - 1)
        refresh()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func  refresh() {
        type.text = "汽車"
        brand.text = cars[choose].getBrand()
        plate.text = cars[choose].getPlate()
        consume.text = String(cars[choose].getConsume())
        passenger.text = String(cars[choose].getPassengers())
        good.text = String(cars[choose].getGood())
        stock.text = String(cars[choose].getStock())
        miles.text = String(cars[choose].getMiles())
    }

    @IBAction func changePlate(_ sender: Any) {
        cars[choose].setPlate(plate: plate.text!)
        refresh()
    }
    
    @IBAction func addPassenger(_ sender: Any) {
        cars[choose].addPassenger()
        refresh()
    }
    
    @IBAction func removePassenger(_ sender: Any) {
        cars[choose].removePassenger()
        refresh()
    }
    
    @IBAction func addGood(_ sender: Any) {
        cars[choose].addGood()
        refresh()
    }
    
    @IBAction func removeGood(_ sender: Any) {
        cars[choose].removeGood()
        refresh()
    }
    
    @IBAction func drive(_ sender: Any) {
        cars[choose].drive()
        refresh()
    }
    
    @IBAction func refuel(_ sender: Any) {
        cars[choose].refuel()
        refresh()
    }
    
    @IBAction func selected(_ sender: Any) {
        slider.value = Float(Int(slider.value))
        choose = Int(slider.value)
        refresh()
    }
}

