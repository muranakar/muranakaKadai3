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
// この辺りに「let num1: Int」 「let num2: Int」　を定義して、ViewController.swiftの中で
// 汎用したいが、varでしか定義ができません。「let num1: Int」という初期値なしの定義は、メソッド外では難しいですか？
    private var num1: Int = 0
    private var num2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1Label.text = "0"
        textField2Label.text = "0"
        calculationLabel.text = "0"
    }

    @IBAction private func textField1PlusminusSwitch(_ sender: UISwitch) {
        if sender.isOn {
            num1 = (Int(textField1.text ?? "") ?? 0) * -1
        } else {
            num1 = (Int(textField1.text ?? "") ?? 0)
        }
        textField1Label.text = String(num1)
    }

    @IBAction private func textField2PlusminusSwitch(_ sender: UISwitch) {
        if sender.isOn {
            num2 = (Int(textField2.text ?? "") ?? 0) * -1
        } else {
            num2 = (Int(textField2.text ?? "") ?? 0)
        }
        textField2Label.text = String(num2)
    }

    @IBAction private func calculate(_ sender: Any) {
        let calculation = num1 + num2
        calculationLabel.text = String(calculation)
    }
}
