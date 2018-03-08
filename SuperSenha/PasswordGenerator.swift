//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Usuário Convidado on 07/03/18.
//  Copyright © 2018 hermivaldo. All rights reserved.
//

import Foundation

class PassWordGenerator{

    var numberOfCharacters: Int
    var numberOfPasswords: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
 
    var password: [String] = []
    
    let letters = "abcdefghijklmnopqrstuvxz"
    let specialCharacters = "!@#$%ˆ&*()_+=-{}|[]\\;'/"
    let numbers = "0123456789"
    
    init(nbOfCha: Int, nbOfPass: Int, usLe: Bool, usNum: Bool, usCap: Bool, usSpCh: Bool) {
        self.numberOfCharacters = nbOfCha
        self.numberOfPasswords = nbOfPass
        self.useLetters = usLe
        self.useNumbers = usNum
        self.useCapitalLetters = usCap
        self.useSpecialCharacters = usSpCh
    }
    
    
    func generate() -> [String]{
        
        password.removeAll()
        
        var universe: String = ""
        if useNumbers {
            universe += numbers
        }
        
        if useLetters {
            universe += letters
        }
        
        if useSpecialCharacters {
            universe += specialCharacters
        }
        
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        
        while password.count < numberOfPasswords {
            var pass: String = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                pass += String(universeArray[index])
            }
            password.append(pass)
        }
        
        return self.password
    }
    
}
