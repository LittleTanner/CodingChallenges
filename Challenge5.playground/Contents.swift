import UIKit
import XCTest

/*
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account
*/

func countCharacters(inPhrase phrase: String, characterToCount specificChar: Character) -> String {
    
    var countCharacterDict: [Character : Int] = [:]
    
    for character in phrase {
        if let count = countCharacterDict[character] {
            countCharacterDict[character] = count + 1
        } else {
            countCharacterDict[character] = 1
        }
    }
    
    return "The letter \(specificChar) appears \(countCharacterDict[specificChar] ?? 0) in \(phrase)"
}

countCharacters(inPhrase: "The rain in Spain", characterToCount: "a") // The letter "a" appears twice in "The rain in Spain"
countCharacters(inPhrase: "Mississippi", characterToCount: "i") // The letter "i" appears four times in "Mississippi"
countCharacters(inPhrase: "Hacking with Swift", characterToCount: "i") // The letter "i" appears three times in "Hacking with Swift"


// Paul's Solution not using a for in loop
func challenge5d(input: String, count: String) -> Int {
    let modified = input.replacingOccurrences(of: count, with: "")
    
    return input.count - modified.count
}

challenge5d(input: "The rain in Spain", count: "a") // The letter "a" appears twice in "The rain in Spain"
challenge5d(input: "Mississippi", count: "i") // The letter "i" appears four times in "Mississippi"
challenge5d(input: "Hacking with Swift", count: "i") // The letter "i" appears three times in "Hacking with Swift"
