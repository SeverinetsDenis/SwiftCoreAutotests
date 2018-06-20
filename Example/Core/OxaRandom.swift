//
//  OxaRandom.swift
//  Copyright © 2018 Oxagile. All rights reserved.
//

import Foundation

class OxaRandom {
    
    /**
     Random string with given length
     */
    static func getString (length : Int) -> String {
        
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(UInt32(letters.length))
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        
        return randomString
    }
    
    /**
     Random string with email format with given length before '@'
     */
    static func getEmail (length : Int) -> String {
        return "\(OxaRandom.getString(length: length))@test.com"
    }
    
    /**
     Random int number within range
     */
    static func getNumber(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    /**
     Random double number within range
     */
    static func getNumber(min: Double = 0, max: Double = 1) -> Double {
        return (Double(arc4random()) / Double(UInt32.max)) * (max - min) + min
    }
    
    /**
     Random true or false
     */
    static func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
    
}

/**
 Set extension allows to get random element from any Set
 */
extension Set {
   
    public func randomObject() -> Element? {
        let n = Int(arc4random_uniform(UInt32(self.count)))
        let index = self.index(self.startIndex, offsetBy: n)
        return self.count > 0 ? self[index] : nil
    }
}
