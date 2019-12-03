import UIKit

/*
 
 Write a function that returns a string with any consecutive spaces replaced with a single space
 
 */

func removeConsecutiveSpaces(input: String) -> String {
    
    var output = input
    
    while output.contains("[space][space]") {
        output = output.replacingOccurrences(of: "[space][space]", with: "[space]")
    }
    
    return output
}

removeConsecutiveSpaces(input: "a[space][space][space]b[space][space][space]c") // a[space]b[space]c
removeConsecutiveSpaces(input: "[space][space][space][space]a") // [space]a
removeConsecutiveSpaces(input: "abc") // abc

// Paul's solution
func challenge7b(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

challenge7b(input: "a   b   c") // "a b c"
challenge7b(input: "    a") // " a"
challenge7b(input: "abc") // "abc"
