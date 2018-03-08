//
//  ViewController.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 hermivaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfPassCount: UITextField!
    @IBOutlet weak var tfTotalCount: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvDestination = segue.destination as? PasswordViewController {
            
            if let passCount = Int(tfPassCount.text!) {
                cvDestination.numberOfCharacters = passCount
            }
            
            if let totalCount = Int(tfTotalCount.text!) {
                cvDestination.numberOfPasswords = totalCount
            }
           
            cvDestination.useLetters = swLetters.isOn
            cvDestination.useNumbers = swNumbers.isOn
            cvDestination.useCapitalLetters = swCapitalLetters.isOn
            cvDestination.useSpecialCharacters = swSpecialCharacters.isOn
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

