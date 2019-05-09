//
//  ViewController.swift
//  loginTea
//
//  Created by Admin on 5/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDontacount: UILabel!
    @IBOutlet weak var viewTextPass: UIView!
    @IBOutlet weak var viewTextPhone: UIView!
    @IBOutlet weak var viewSignUp: UIView!
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var imgEyeOff: UIImageView!
    
    var arrPhone: [String: String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signUp()
        self.textPhonePass()
        self.colornewaccount()
        
        arrPhone = [ "012": "q", "123": "w", "234": "e", "456": "r", "567": "t", "789": "y" ]
        

    }
    func signUp() {
        self.viewSignUp.backgroundColor = UIColor.orange
        self.viewSignUp.layer.cornerRadius = 25
        self.viewSignUp.clipsToBounds = true
        
        viewSignUp.layer.shadowColor = UIColor.black.cgColor
        viewSignUp.layer.shadowOpacity = 0.3
        viewSignUp.layer.shadowRadius = 1
        viewSignUp.layer.shadowOffset = CGSize(width: 0, height: 3)
        viewSignUp.layer.masksToBounds = false
    }
    func textPhonePass() {
        viewTextPhone.layer.cornerRadius = 20
        viewTextPhone.layer.borderColor = UIColor.gray.cgColor
        viewTextPhone.layer.borderWidth = 1
        viewTextPhone.clipsToBounds = true
        
        viewTextPass.layer.cornerRadius = 20
        viewTextPass.layer.borderColor = UIColor.gray.cgColor
        viewTextPass.layer.borderWidth = 1
        viewTextPass.clipsToBounds = true
    }
    func colornewaccount() {
        lblDontacount.text = String("Don't have an acount Sign Up")
        let colortextdontacount = NSMutableAttributedString.init(string: lblDontacount.text!)
        colortextdontacount.addAttribute(.foregroundColor, value: UIColor.gray, range: NSRange.init(location: 0, length: 21))
        lblDontacount.attributedText = colortextdontacount
    }

    @IBAction func btnSignIn(_ sender: Any) {
        if let phone = arrPhone[tfPhone.text!]{
            
            if phone == tfPass.text{
                print("Wellcome to home")
            }else {
                print("Sorry password is erroll")
            }
        }else{
            print("User name not is changing")
        }
        
        if tfPhone.text == "" {
            if tfPass.text == "" {
                print("You dis not enter a Phone number add Password")
            }else{
            print("You did not enter a phone number")
            }
        }else{
            print("You did not enter a Password")
        }
    }
     var onclick = true
    @IBAction func btnEye(_ sender: Any) {
        if onclick == true {
            tfPass.isSecureTextEntry = false
            imgEyeOff.image = UIImage(named: "images.png")
            
        }else {
            tfPass.isSecureTextEntry = true
            imgEyeOff.image = UIImage(named: "eye.png")
        }
        onclick = !onclick
    }
}

