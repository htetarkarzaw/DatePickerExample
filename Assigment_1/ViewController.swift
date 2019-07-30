//
//  ViewController.swift
//  Assigment_1
//
//  Created by Htet Arkar Zaw on 7/30/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDOB: UITextField!
    var selectedGender : Int = -1
    private var datePicker : UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(selectDate(datePicker:)), for: .valueChanged)
        
        tfDOB.inputView = datePicker
    }

    @IBAction func sgGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: SecondViewController.identifer) as! SecondViewController
        vc.dateOfBirth = tfDOB.text ?? ""
        vc.selectedGenderIndex = selectedGender
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func selectDate(datePicker : UIDatePicker){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        tfDOB.text = formatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
}

