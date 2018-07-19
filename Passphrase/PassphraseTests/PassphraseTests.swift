//
//  PassphraseTests.swift
//  PassphraseTests
//
//  Created by kidnapper on 19/07/2018.
//  Copyright © 2018 kidnapper. All rights reserved.
//

import XCTest
@testable import Passphrase

class PassphraseTests: XCTestCase {
    
    var passphrase: Passphrase!
    
    override func setUp() {
        super.setUp()
        passphrase = Passphrase()
    }
    
    override func tearDown() {
        passphrase = nil
        super.tearDown()
    }
    
    func testFirstCondition() {
        let result = passphrase.shiftWords(words: "xyz")
        assert(result == "yza", "result: \(result) incorrect")
    }
    
    func testSecondCondition() {
        let result = passphrase.shiftWords(words: "4567")
        assert(result == "5432", "result: \(result) incorrect")
    }
    
    func testThirdCondition() {
        let result = passphrase.shiftWords(words: "xyz 4567!")
        assert(result == "yza 5432!", "result: \(result) incorrect")
    }
    
    func testFourthCondition() {
        let result = passphrase.caseChange(words: "wxyz")
        assert(result == "WxYz", "result: \(result) incorrect")
    }
    
    func testExample() {
        
    }
    
    func testPerformanceExample() {
        
        self.measure {
            
        }
    }
    
}
