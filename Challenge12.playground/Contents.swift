import UIKit
import XCTest

/*
 
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words
 
 */

// Solved with help from Paul
func longestPrefix(input: String) -> String {

    let words = input.components(separatedBy: " ")
    
    guard let first = words.first else { return "" }
    
    var currentPrefix = ""
    var longestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in words {
            if !word.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}

assert(longestPrefix(input: "swift switch swill swim") == "swi", "Test failed")
assert(longestPrefix(input: "flip flap flop") == "fl", "Test failed")
