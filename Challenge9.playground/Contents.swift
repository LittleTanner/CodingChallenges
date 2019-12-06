import UIKit
import XCTest

/*
 
 Write a function that returns true if it is given a string that is an English panagram, ignoring letter case
 
 A panagram is a string that contains every letter of the alphabet at least once.
 
 */

// first solution
//func isPanagram(input: String) -> Bool {
//
//    let inputLowercased = input.lowercased()
//    var fullAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",]
//
//    for character in inputLowercased {
//
//        if fullAlphabet.contains(String(character)) {
//            if let index = fullAlphabet.firstIndex(of: String(character)) {
//                fullAlphabet.remove(at: index)
//            }
//        }
//
//        if fullAlphabet.count == 0 {
//            return true
//        }
//
//    }
//
//    return false
//}


// 2nd Answer after googling how to check if an array contains all elements of a string
func isPanagram(input: String) -> Bool {
    
    let fullAlphabet: Set<String.Element> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",]
    
    return fullAlphabet.isSubset(of: input.lowercased())
}

isPanagram(input: "The quick brown fox jumps over the lazy dog") // true
isPanagram(input: "The quick brown fox jumped over the lazy dog") // false (missing s)

assert(isPanagram(input: "The quick brown fox jumps over the lazy dog") == true, "Test failed")
assert(isPanagram(input: "The quick brown fox jumped over the lazy dog") == false, "Test failed")


// Paul's solution
func challenge9(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

challenge9(input: "The quick brown fox jumps over the lazy dog") // true
challenge9(input: "The quick brown fox jumped over the lazy dog") // false (missing s)
