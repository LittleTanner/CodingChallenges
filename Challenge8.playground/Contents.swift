import UIKit
import XCTest

/*
 
 Write a function tha taccepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 
 */

func isRotationOf(input1: String, input2: String) -> Bool {
    
    if input1.count != input2.count {
        return false
    }

    var input2Rotated = input2
    
    for _ in 0..<input2.count {
        if input1 == input2Rotated {
            return true
        }
        
        if let lastValue = input2Rotated.last {
            input2Rotated.insert(lastValue, at: input2Rotated.startIndex)
            input2Rotated.removeLast()
        }
    }
    
    return false
}

//isRotationOf(input1: "abcde", input2: "eabcd") // true
//isRotationOf(input1: "abcde", input2: "cdeab") // true
//isRotationOf(input1: "abcde", input2: "abced") // false
//isRotationOf(input1: "abc", input2: "a") // false

assert(isRotationOf(input1: "abcde", input2: "eabcd") == true, "Test failed")
assert(isRotationOf(input1: "abcde", input2: "cdeab") == true, "Test failed")
assert(isRotationOf(input1: "abcde", input2: "abced") == false, "Test failed")
assert(isRotationOf(input1: "abc", input2: "a") == false, "Test failed")


// Paul's Solution
func challenge8(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    
    let combined = input + input
    return combined.contains(rotated)
}


// My tests for Paul's solution
assert(challenge8(input: "abcde", rotated: "eabcd") == true, "Test failed")
assert(challenge8(input: "abcde", rotated: "cdeab") == true, "Test failed")
assert(challenge8(input: "abcde", rotated: "abced") == false, "Test failed")
assert(challenge8(input: "abc", rotated: "a") == false, "Test failed")
