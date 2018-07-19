//
//  ViewController.swift
//  Passphrase
//
//  Created by kidnapper on 19/07/2018.
//  Copyright © 2018 kidnapper. All rights reserved.
//

import Foundation

class Passphrase: NSObject {
    
    func shiftWords(words: String) -> String {
        let output = words.unicodeScalars.map { unicodeScalar -> Character in
            return Character(UnicodeScalar(unicodeScalar.value + 1)!)
        }
        var result = ""
        for character in output {
            result += String(character)
        }
        return result
    }

}

