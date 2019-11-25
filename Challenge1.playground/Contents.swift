import UIKit
import XCTest


/*
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
*/


//func doesContainUniqueCharacters(string: String) -> Bool {
//
//    var characterDict: [String : Int] = [:]
//
//    for character in string {
//        if let characterCount = characterDict[String(character)] {
//            characterDict[String(character)] = characterCount + 1
//        } else {
//            characterDict[String(character)] = 1
//        }
//    }
//
//    for (_, value) in characterDict {
//        if value > 1 {
//            return false
//        }
//    }
//
//    return true
//}

//func doesContainUniqueCharacters(string: String) -> Bool {
//
//    var characterDict: [String : Int] = [:]
//
//    for character in string {
//        if let _ = characterDict[String(character)] {
//            return false
//        } else {
//            characterDict[String(character)] = 1
//        }
//    }
//
//    return true
//}

//func doesContainUniqueCharacters(string: String) -> Bool {
//
//    var characterArray: [String.Element] = []
//
//    for character in string {
//        if characterArray.contains(character) {
//            return false
//        } else {
//            characterArray.append(character)
//        }
//    }
//
//    return true
//}

//func doesContainUniqueCharacters(string: String) -> Bool {
//
//    let stringAsArray = Array(string)
//    let stringAsSet = Set(stringAsArray)
//
//    if stringAsArray.count != stringAsSet.count {
//        return false
//    }
//
//    return true
//}

func doesContainUniqueCharacters(string: String) -> Bool {
    
    return string.count == Set(string).count
}

doesContainUniqueCharacters(string: "No duplicates") // true
doesContainUniqueCharacters(string: "abcdefghijklmnopqrstuvwxyz") // true
doesContainUniqueCharacters(string: "AaBbCc") // true
doesContainUniqueCharacters(string: "Hello, world") // false

assert(doesContainUniqueCharacters(string: "No duplicates") == true, "Challenge 1 failed")
assert(doesContainUniqueCharacters(string: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(doesContainUniqueCharacters(string: "AaBbCc") == true, "Challenge 1 failed")
assert(doesContainUniqueCharacters(string: "Hello, world") == false, "Challenge 1 failed")
