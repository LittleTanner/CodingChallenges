import UIKit
import XCTest

/*
 
 Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
 
 */

func isAPalindrome1(input: String) -> Bool {
    let one = input.lowercased()
    let two = String(one.reversed())

    return one == two
}

func isAPalindrome2(input: String) -> Bool {
    
    return input.lowercased() == String(input.lowercased().reversed())
}



assert(isAPalindrome1(input: "rotator") == true, "Test Failed")
assert(isAPalindrome1(input: "Rats live on no evil star") == true, "Test Failed")
assert(isAPalindrome1(input: "Never odd or even") == false, "Test Failed")
assert(isAPalindrome1(input: "Hello, world") == false, "Test Failed")

assert(isAPalindrome2(input: "rotator") == true, "Test Failed")
assert(isAPalindrome2(input: "Rats live on no evil star") == true, "Test Failed")
assert(isAPalindrome2(input: "Never odd or even") == false, "Test Failed")
assert(isAPalindrome2(input: "Hello, world") == false, "Test Failed")
