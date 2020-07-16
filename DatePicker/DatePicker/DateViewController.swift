//
//  ViewController.swift
//  DatePicker
//
//  Created by 서정 on 2020/06/30.
//  Copyright © 2020 서정. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    
    @IBOutlet var lblSelectTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblSelectTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        if(count > 0){
            count = count + 1
            if(count == 61){
                view.backgroundColor = UIColor.white
                count = 0
            }
            
        }
        
        let currentTime = formatter.string(from: date as Date)
        if(alarmTime == currentTime){
            view.backgroundColor = UIColor.red
            count = 1
        }
        
        
        
    }
    
}

