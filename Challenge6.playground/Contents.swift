import UIKit
import XCTest

/*
 Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
*/

// 1st attempt, does not keep order, got stuck on the fact of trying to use a set instead of sticking to what i know well which is Paul's 2nd solution below that uses a for in loop
//func removeDuplicates(input: String) -> String {
//
//    let array = Array(input)
//    let set = Set(array)
//
//    return String(set)
//}

// 2nd attempt, doesn't work
//func removeDuplicates(input: String) -> String {
//
//    let characters = Character(input)
//    let array = Array(characters)
//    let set = Set(array)
//
//    let setTest = NSMutableOrderedSet(array: set)
//    setTest
//
//    return String(set)
//}

// Attempt 3, Paul's Solutions
func removeDuplicates(input: String) -> String {
    
    let array = input.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

func removeDuplicates2(input: String) -> String {
    
    var used = [Character]()
    
    for letter in input {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    
    return String(used)
}

func removeDuplicates3(input: String) -> String {
    
    var used = [Character: Bool]()
    
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}



removeDuplicates(input: "wombat")
removeDuplicates(input: "hello")
removeDuplicates(input: "Mississippi")
assert(removeDuplicates(input: "wombat") == "wombat", "Test failed")
assert(removeDuplicates(input: "hello") == "helo", "Test failed")
assert(removeDuplicates(input: "Mississippi") == "Misp", "Test failed")


removeDuplicates2(input: "wombat")
removeDuplicates2(input: "hello")
removeDuplicates2(input: "Mississippi")
assert(removeDuplicates2(input: "wombat") == "wombat", "Test failed")
assert(removeDuplicates2(input: "hello") == "helo", "Test failed")
assert(removeDuplicates2(input: "Mississippi") == "Misp", "Test failed")


removeDuplicates3(input: "wombat")
removeDuplicates3(input: "hello")
removeDuplicates3(input: "Mississippi")
assert(removeDuplicates3(input: "wombat") == "wombat", "Test failed")
assert(removeDuplicates3(input: "hello") == "helo", "Test failed")
assert(removeDuplicates3(input: "Mississippi") == "Misp", "Test failed")
