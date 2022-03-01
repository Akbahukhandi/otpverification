//
//  ViewController.swift
//  OTP Verification
//
//  Created by FicodeMacBookAir on 01/03/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
    
    @IBOutlet weak var txtOTP5: UITextField!
    @IBOutlet weak var txtOTP3: UITextField!
    @IBOutlet weak var txtOTP6: UITextField!
    @IBOutlet weak var txtOTP4: UITextField!
    @IBOutlet weak var txtOTP1: UITextField!
    @IBOutlet weak var txtOTP2: UITextField!
                       
    override func viewDidLoad() {
        super.viewDidLoad()
        txtOTP1.becomeFirstResponder()
        txtOTP1.backgroundColor = UIColor.clear
        txtOTP2.backgroundColor = UIColor.clear
        txtOTP3.backgroundColor = UIColor.clear
        txtOTP4.backgroundColor = UIColor.clear
        txtOTP5.backgroundColor = UIColor.clear
        txtOTP6.backgroundColor = UIColor.clear
        addBottomBorder(textField: txtOTP1)
        addBottomBorder(textField: txtOTP2)
        addBottomBorder(textField: txtOTP3)
        addBottomBorder(textField: txtOTP4)
        addBottomBorder(textField: txtOTP5)
        addBottomBorder(textField: txtOTP6)
        txtOTP1.delegate = self
        txtOTP2.delegate = self
        txtOTP3.delegate = self
        txtOTP4.delegate = self
        txtOTP5.delegate = self
        txtOTP6.delegate = self

}
    func addBottomBorder(textField:UITextField){
        let layer = CALayer()
        layer.backgroundColor = UIColor.black.cgColor
        layer.frame = CGRect(x: 0.0, y: textField.frame.size.height - 2.0, width: textField.frame.size.width, height: 2.0)
        textField.layer.addSublayer(layer)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1) && (string.count > 0) {
            if textField == txtOTP1{
                txtOTP2.becomeFirstResponder()
            }
            if textField == txtOTP2{
                txtOTP3.becomeFirstResponder()
            }
            if textField == txtOTP3{
                txtOTP4.becomeFirstResponder()
            }
            if textField == txtOTP4{
                txtOTP5.becomeFirstResponder()
        }
            if textField == txtOTP5{
                txtOTP6.becomeFirstResponder()
        }
            if textField == txtOTP6{
                txtOTP6.resignFirstResponder()
        }
            textField.text = string
            return false
        }
        else if ((textField.text?.count)! >= 1) && (string.count == 0){
            if textField == txtOTP2{
                txtOTP1.becomeFirstResponder()
            }
            if textField == txtOTP3{
                txtOTP2.becomeFirstResponder()
            }
            if textField == txtOTP4{
                txtOTP3.becomeFirstResponder()
            }
            if textField == txtOTP5{
                txtOTP4.becomeFirstResponder()
            }
            if textField == txtOTP6{
                txtOTP5.becomeFirstResponder()
            }
            if textField == txtOTP1{
                txtOTP1.resignFirstResponder()
            }
            textField.text = ""
            return false
        }
        else if (textField.text!.count) >= 1 {
            textField.text = string
            return false
        }
            return true
    }
            

}

