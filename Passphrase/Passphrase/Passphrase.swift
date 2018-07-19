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
            guard checkIfAlphabetOrNumber(by: unicodeScalar) else { return Character(unicodeScalar) }
            if unicodeScalar.value <= "9".unicodeScalars.first!.value,
                "0".unicodeScalars.first!.value <= unicodeScalar.value {
                let middleValueSum = "4".unicodeScalars.first!.value + "5".unicodeScalars.first!.value
                return Character(UnicodeScalar(middleValueSum - unicodeScalar.value)!)
            }
            if unicodeScalar.value == "z".unicodeScalars.first!.value {
                return Character(UnicodeScalar("a".unicodeScalars.first!.value)!)
            } else if unicodeScalar.value == "Z".unicodeScalars.first!.value {
                return Character(UnicodeScalar("A".unicodeScalars.first!.value)!)
            }
            return Character(UnicodeScalar(unicodeScalar.value + 1)!)
        }
        var result = ""
        for character in output {
            result += String(character)
        }
        return result
    }
    
    func checkIfAlphabetOrNumber(by unicodeScalar: UnicodeScalar) -> Bool {
        if unicodeScalar.value <= "z".unicodeScalars.first!.value,
            "a".unicodeScalars.first!.value <= unicodeScalar.value {
        } else if unicodeScalar.value <= "Z".unicodeScalars.first!.value,
            "A".unicodeScalars.first!.value <= unicodeScalar.value {
        } else if unicodeScalar.value <= "9".unicodeScalars.first!.value,
            "0".unicodeScalars.first!.value <= unicodeScalar.value {
            
        } else {
            return false
        }
        return true
    }

}

