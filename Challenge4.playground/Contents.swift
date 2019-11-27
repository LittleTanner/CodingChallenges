import UIKit
import XCTest

/*
 Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
*/

extension String {
    
    func containsWord(_ word: String) -> Bool {
        let phrase = self.lowercased()
        let wordLowercased = word.lowercased()
        
        if let _ = phrase.range(of: wordLowercased) {
            return true
        } else {
            return false
        }
    }
    
    // Refactored
    func containsWord1(_ word: String) -> Bool {
        
        return self.lowercased().range(of: word.lowercased()) != nil
    }
    
    // Refactored
    func containsWord2(_ word: String) -> Bool {
        
        return range(of: word, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".containsWord("Hello") == true, "Test failed")
assert("Hello, world".containsWord("WORLD") == true, "Test failed")
assert("Hello, world".containsWord("Goodbye") == false, "Test failed")

assert("Hello, world".containsWord1("Hello") == true, "Test failed")
assert("Hello, world".containsWord1("WORLD") == true, "Test failed")
assert("Hello, world".containsWord1("Goodbye") == false, "Test failed")

assert("Hello, world".containsWord2("Hello") == true, "Test failed")
assert("Hello, world".containsWord2("WORLD") == true, "Test failed")
assert("Hello, world".containsWord2("Goodbye") == false, "Test failed")
