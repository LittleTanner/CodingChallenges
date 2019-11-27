import UIKit
import XCTest

/*
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
*/


func containSameCharacters1(input1: String, input2: String) -> Bool {
    
    let input1Sorted = input1.sorted()
    let input2Sorted = input2.sorted()
    
    return input1Sorted == input2Sorted
}

func containSameCharacters2(input1: String, input2: String) -> Bool {
    
    return input1.sorted() == input2.sorted()
}

assert(containSameCharacters1(input1: "abca", input2: "abca") == true, "Test failed")
assert(containSameCharacters1(input1: "abc", input2: "bca") == true, "Test failed")
assert(containSameCharacters1(input1: "a1 b2", input2: "b1 a2") == true, "Test failed")
assert(containSameCharacters1(input1: "abc", input2: "abca") == false, "Test failed")
assert(containSameCharacters1(input1: "abc", input2: "Abc") == false, "Test failed")
assert(containSameCharacters1(input1: "abc", input2: "bcAa") == false, "Test failed")
assert(containSameCharacters1(input1: "abcc", input2: "abca") == false, "Test failed")

assert(containSameCharacters2(input1: "abca", input2: "abca") == true, "Test failed")
assert(containSameCharacters2(input1: "abc", input2: "bca") == true, "Test failed")
assert(containSameCharacters2(input1: "a1 b2", input2: "b1 a2") == true, "Test failed")
assert(containSameCharacters2(input1: "abc", input2: "abca") == false, "Test failed")
assert(containSameCharacters2(input1: "abc", input2: "Abc") == false, "Test failed")
assert(containSameCharacters2(input1: "abc", input2: "bcAa") == false, "Test failed")
assert(containSameCharacters2(input1: "abcc", input2: "abca") == false, "Test failed")
