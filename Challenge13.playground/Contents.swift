import UIKit
import XCTest

/*
 
 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 
 */

// Attempt 1
func challenge13a(input: String) -> String {
    
    guard var lastCharacter = input.first else { return input}
    var output = ""
    var lastCharacterCount = 0
    
    for character in input {
        if lastCharacter == character {
            lastCharacterCount += 1
        } else {
            output.append(String(lastCharacter))
            output.append(String(lastCharacterCount))
            lastCharacterCount = 1
            lastCharacter = character
        }
    }
    
    return output
}

challenge13a(input: "aabbcc")
//assert(challenge13a(input: "aabbcc") == "a2b2c2", "Test failed")


// Attempt 2, Success but very hacky
func challenge13b(input: String) -> String {
    
    let inputAsArray = Array(input)
    var output = ""
    var lastCharacterCount = 1
    var index = 0
    
    while index < inputAsArray.count {
        
        if inputAsArray[index] == inputAsArray[index + 1] && index + 1 < inputAsArray.count - 1 {
            lastCharacterCount += 1
        } else {
            output.append(String(inputAsArray[index]))
            output.append(String(lastCharacterCount))
            lastCharacterCount = 1
        }
        
        if index + 1 < inputAsArray.count - 1 {
            index += 1
        } else {
            guard let lastChar = output.last, var lastNumber = Int(String(lastChar)) else { return output }
            
            lastNumber += 1
            
            output.removeLast()
            output.append(Character(String(lastNumber)))
            
            return output
        }
    }
    
    return output
}

challenge13b(input: "aabbcc")
challenge13b(input: "aaabaaabaaa")
challenge13b(input: "aaAAaa")
assert(challenge13b(input: "aabbcc") == "a2b2c2", "Test failed")
assert(challenge13b(input: "aaabaaabaaa") == "a3b1a3b1a3", "Test failed")
assert(challenge13b(input: "aaAAaa") == "a2A2a2", "Test failed")


// Paul's Solutions
func challenge13aa(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in input {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            
            currentLetter = letter
            letterCounter = 1
        }
    }
    
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    
    return returnValue
}

assert(challenge13aa(input: "aabbcc") == "a2b2c2", "Test failed")
assert(challenge13aa(input: "aaabaaabaaa") == "a3b1a3b1a3", "Test failed")
assert(challenge13aa(input: "aaAAaa") == "a2A2a2", "Test failed")


func challenge13bb(input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    let letterArray = Array(input)

    for i in 0 ..< letterArray.count {
        letterCounter += 1

        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }

    return returnValue
}

assert(challenge13bb(input: "aabbcc") == "a2b2c2", "Test failed")
assert(challenge13bb(input: "aaabaaabaaa") == "a3b1a3b1a3", "Test failed")
assert(challenge13bb(input: "aaAAaa") == "a2A2a2", "Test failed")
