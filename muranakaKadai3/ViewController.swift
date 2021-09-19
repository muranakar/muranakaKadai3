//
//  ViewController.swift
//  muranakaKadai3
//
//  Created by 村中令 on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField1Switch: UISwitch!
    @IBOutlet private weak var textField2Switch: UISwitch!
    @IBOutlet private weak var textField1Label: UILabel!
    @IBOutlet private weak var textField2Label: UILabel!
    @IBOutlet private weak var calculationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1Label.text = "0"
        textField2Label.text = "0"
        calculationLabel.text = "0"
    }

    @IBAction private func calculate(_ sender: Any) {
        let originalNum1 = Int(textField1.text ?? "") ?? 0
        let originalNum2 = Int(textField2.text ?? "") ?? 0

        let signedNum1: Int
        if textField1Switch.isOn {
            signedNum1 = -originalNum1
        } else {
            signedNum1 = originalNum1
        }
        textField1Label.text = String(signedNum1)

        let signedNum2: Int
        if textField2Switch.isOn {
            signedNum2 = -originalNum2
        } else {
            signedNum2 = originalNum2
        }
        textField2Label.text = String(signedNum2)

        calculationLabel.text = String(signedNum1 + signedNum2)
    }
}
