import UIKit
import XCTest

/*
 
 Create a function that accepts positive two integers, and raises the first to the power of the second.
 
 Tip: If you name your function myPow() or challenge18(), you'll be able to use the built-in pow() for your tests. The built-in pow() uses doubles, so you'll need to typecast.
 
 */


func myPow(number: Int, power: Int) -> Int {
    
    guard number > 0, power > 0 else { return 0 }
    
    var newNumber = 1
    
    for _ in 1...power {
        newNumber = newNumber * number
    }
    
    return newNumber
}

myPow(number: 4, power: 3)
myPow(number: 2, power: 8)
// Tests
assert(myPow(number: 4, power: 3) == 64, "Test failed")
assert(myPow(number: 2, power: 8) == 256, "Test failed")


// Paul's Solutions

func challenge18a(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    var returnValue = number

    for _ in 1..<power {
        returnValue *= number
    }

    return returnValue
}

// Using Recursion
func challenge18b(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number }

    return number * challenge18b(number: number, power: power - 1)
}


// My Tests for Paul's Solutions
assert(challenge18a(number: 4, power: 3) == 64, "Test failed")
assert(challenge18a(number: 2, power: 8) == 256, "Test failed")
assert(challenge18b(number: 4, power: 3) == 64, "Test failed")
assert(challenge18b(number: 2, power: 8) == 256, "Test failed")
