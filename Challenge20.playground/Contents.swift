import UIKit
import XCTest

func isPrime(number: Int) -> Bool {

    if number == 1 {
        return false
    }
    
    if number > 1 && number % 2 == 0 {
        return false
    }
    
    return true
}

// Tests
assert(isPrime(number: 11) == true, "Test failed")
assert(isPrime(number: 13) == true, "Test failed")
assert(isPrime(number: 4) == false, "Test failed")
assert(isPrime(number: 9) == true, "Test failed")
assert(isPrime(number: 16777259) == true, "Test failed")

isPrime(number: 1)
