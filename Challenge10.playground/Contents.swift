import UIKit
import XCTest

/*
 
 Given a string in English, return a tuple containing the number of vowels and consonants.
 
 */


func findVowelsAndConsonants(input: String) -> (vowels: Int, consonants: Int) {
    var numberOfVowels = 0
    var numberOfConsonants = 0
    
    let vowels = ["a", "e", "i", "o", "u"]
    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    
    for character in input.lowercased() {
        if vowels.contains(String(character)) {
            numberOfVowels += 1
        } else if consonants.contains(String(character)){
            numberOfConsonants += 1
        } else {
            // its not a letter, do nothing
        }
    }
    
    return (numberOfVowels, numberOfConsonants)
}

assert(findVowelsAndConsonants(input: "Swift Coding Challenges") == (6, 15), "Test failed")
assert(findVowelsAndConsonants(input: "Mississippi") == (4,7), "Test failed")


// Paul's solution
func challenge10c(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    
    return (vowelCount, consonantCount)
}

assert(challenge10c(input: "Swift Coding Challenges") == (6, 15), "Test failed")
assert(challenge10c(input: "Mississippi") == (4,7), "Test failed")
