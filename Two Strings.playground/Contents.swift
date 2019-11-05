import UIKit

/*
 
 Given two strings, determine if they share a common substring. A substring may be as small as one character.
 For example, the words "a", "and", "art" share the common substring . The words "be" and "cat" do not share a substring.
 Function Description
 Complete the function twoStrings in the editor below. It should return a string, either YES or NO based on whether the strings share a common substring.
 twoStrings has the following parameter(s):
 s1, s2: two strings to analyze .
 Input Format
 The first line contains a single integer , the number of test cases.
 The following  pairs of lines are as follows:
 The first line contains string .
 The second line contains string .
 Constraints
  and  consist of characters in the range ascii[a-z].


 Output Format
 For each pair of strings, return YES or NO.
 Sample Input
 2
 hello
 world
 hi
 world
 Sample Output
 YES
 NO
 Explanation
 We have  pairs to check:
 , . The substrings  and  are common to both strings.
 , .  and  share no common substrings.
 
 */

func twoStrings(s1: String, s2: String) -> String {
    var sharesASubstring = "NO"
    
    for character in s1.lowercased() {
        if s2.lowercased().contains(character) {
            sharesASubstring = "YES"
        }
    }

    return sharesASubstring
}

func twoStringsSecondTry(s1: String, s2: String) -> String {
    var sharesASubstring = "NO"
    
    var s1Set = Set<Character>()
    let s1WithDuplicatesRemoved = s1.filter { s1Set.insert($0).inserted }
    print(s1WithDuplicatesRemoved)
    
    var s2Set = Set<Character>()
    let s2WithDuplicatesRemoved = s2.filter { s2Set.insert($0).inserted }
    print(s2WithDuplicatesRemoved)
    
    for character in s1WithDuplicatesRemoved.lowercased() {
        if s2WithDuplicatesRemoved.lowercased().contains(character) {
            sharesASubstring = "YES"
        }
    }

    return sharesASubstring
}

twoStrings(s1: "hello", s2: "world")
twoStrings(s1: "hi", s2: "world")
twoStringsSecondTry(s1: "hello", s2: "world")
twoStringsSecondTry(s1: "hi", s2: "world")
