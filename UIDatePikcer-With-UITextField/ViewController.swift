//
//  ViewController.swift
//  UIDatePikcer-With-UITextField
//
//  Created by Aman Aggarwal on 24/02/20.
//  Copyright © 2020 Aman Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.txtDate.setDatePickerAsInputViewFor(target: self, selector: #selector(dateSelected))
    }
    
    @objc func dateSelected() {
        if let datePicker = self.txtDate.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            self.txtDate.text = dateFormatter.string(from: datePicker.date)
        }
        self.txtDate.resignFirstResponder()
    }


}

