import UIKit
import XCTest

/*
 
 Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
 
 */

func challenge11a(input1: String, input2: String) -> Bool {
    
    guard input1.count == input2.count else {
        return false
    }
    
    let input1AsArray = Array(input1)
    let input2AsArray = Array(input2)
    
    var index = 0
    var differencesCount = 0
    
    while index < input1.count {
        if input1AsArray[index] != input2AsArray[index] {
            differencesCount += 1
            if differencesCount > 3 {
                return false
            }
        }
        index += 1
    }
    
    return true
}

assert(challenge11a(input1: "Clamp", input2: "Cramp") == true, "Test failed")
assert(challenge11a(input1: "Clamp", input2: "Crams") == true, "Test failed")
assert(challenge11a(input1: "Clamp", input2: "Grams") == true, "Test failed")
assert(challenge11a(input1: "Clamp", input2: "Grans") == false, "Test failed")
assert(challenge11a(input1: "Clamp", input2: "Cram") == false, "Test failed")
assert(challenge11a(input1: "clamp", input2: "maple") == false, "Test failed")


// Paul's Solution

func challenge11b(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            
            if differences == 4 {
                return false
            }
        }
    }
    return true
}

assert(challenge11b(first: "Clamp", second: "Cramp") == true, "Test failed")
assert(challenge11b(first: "Clamp", second: "Crams") == true, "Test failed")
assert(challenge11b(first: "Clamp", second: "Grams") == true, "Test failed")
assert(challenge11b(first: "Clamp", second: "Grans") == false, "Test failed")
assert(challenge11b(first: "Clamp", second: "Cram") == false, "Test failed")
assert(challenge11b(first: "clamp", second: "maple") == false, "Test failed")
