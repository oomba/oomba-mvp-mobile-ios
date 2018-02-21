//
//  LoginViewController.swift
//  OombaIphone
//
//  Created by Jilin Liu on 2/21/18.
//  Copyright © 2018 Oomba. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        DispatchQueue.main.async {
            //TODO button bottom
            
            self.createAccountButton.layer.cornerRadius = 10
            self.loginButton.layer.cornerRadius = 10
        }
        emailTextField.delegate = self
    }
    
    
    
    @IBAction func createAccount(_ sender: Any) {
    }
    
    @IBAction func login(_ sender: Any) {
        authenticateUser()
    }
    
    private func authenticateUser() {
        if validParameters() {
            prepareLoggingUI()
            //TODO login API
        }
    }
    
    private func validParameters() -> Bool {
        return false
    }
    
    private func prepareLoggingUI() {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        authenticateUser()
        view.endEditing(true)
        view.resignFirstResponder()
        return true
    }
}
