//
//  ViewController.swift
//  UIPickerView01
//
//  Created by D7702_09 on 2019. 4. 17..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    

    var myColor = ["RED","GREEN","BLUE","WHITE","YELLOW"]
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    @IBOutlet weak var outLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       //Delegate 객체 연결
        myPicker.delegate = self
        myPicker.dataSource = self
    
        //실행초기 Label  문자를 "red" 로 변경
        outLabel.text = myColor[0]
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myColor.count
    }
    
    // UIPickerViewDelegate 메소드 호출
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myColor[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        outLabel.text = myColor[row]
    }


}

