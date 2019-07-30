//
//  SecondViewController.swift
//  Assigment_1
//
//  Created by Htet Arkar Zaw on 7/30/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    static let identifer = "SecondViewController"
    var dateOfBirth : String = ""
    var selectedGenderIndex = -1
    @IBOutlet weak var lblDob: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDob.text = dateOfBirth
        switch selectedGenderIndex {
        case 1:
                        lblGender.text = "Female"
            break
        case 0 :
                        lblGender.text = "Male"
            break
        default:
                        lblGender.text = "Male"
            break
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
