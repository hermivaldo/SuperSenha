//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 hermivaldo. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    @IBOutlet weak var svPasswords: UITextView!
    
    
    var passwordGenerator: PassWordGenerator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordGenerator = PassWordGenerator(nbOfCha: numberOfCharacters, nbOfPass: numberOfPasswords, usLe: useLetters, usNum: useNumbers, usCap: useCapitalLetters, usSpCh: useSpecialCharacters)
        
        self.generatePassword()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRegen(_ sender: Any) {
        svPasswords.text = ""
        self.generatePassword()
    }
    func generatePassword(){
        if let passwords = passwordGenerator?.generate() {
            for pass in passwords{
                svPasswords.text.append(contentsOf: "\(pass)\n\n")
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
