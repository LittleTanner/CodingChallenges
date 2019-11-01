import UIKit

/*
 Lilah has a string, , of lowercase English letters that she repeated infinitely many times.
 Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.
 For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.
 Function Description
 Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.
 repeatedString has the following parameter(s):
 s: a string to repeat
 n: the number of characters to consider
 Input Format
 The first line contains a single string, .
 The second line contains an integer, .
 Constraints


 For  of the test cases, .
 Output Format
 Print a single integer denoting the number of letter a's in the first  letters of the infinite string created by repeating  infinitely many times.
 Sample Input 0
 aba
 10
 Sample Output 0
 7
 Explanation 0
 The first  letters of the infinite string are abaabaabaa. Because there are  a's, we print  on a new line.
 Sample Input 1
 a
 1000000000000
 Sample Output 1
 1000000000000
 Explanation 1
 Because all of the first  letters of the infinite string are a, we print  on a new line.
 */


//func repeatedString(s: String, n: Int) -> Int {
//    let sAsArray = Array(s)
//    var occurrences = 0
//    let sCharacterCount = s.count
//    var indexOfS = 0
//
//    if s == "a" {
//        return n
//    }
//
//    for _ in 0..<n {
//        if indexOfS < sCharacterCount && indexOfS != 0 {
//            if sAsArray[indexOfS] == "a" {
//                occurrences += 1
//            }
//            indexOfS += 1
//        } else {
//            indexOfS = 0
//            if sAsArray[indexOfS] == "a" {
//                occurrences += 1
//            }
//            indexOfS += 1
//        }
//    }
//    return occurrences
//}


func repeatedString(s: String, n: Int) -> Int {

    var occurrences = 0
    var totalOccurrences = 0
    let sCharacterCount = s.count
    var indexOfS = 0
    var arrayOfIndex: [Int] = []

    if s == "a" {
        return n
    }
    
    if !s.contains("a") {
        return 0
    }

    for a in s {
        if a == "a" {
            occurrences += 1
            arrayOfIndex.append(indexOfS + 1)
        }
        indexOfS += 1
    }

    let remainder = n % sCharacterCount
    
    for num in stride(from: 1, through: remainder, by: 1) {
        if arrayOfIndex.contains(num) {
            totalOccurrences += 1
        }
    }
    
    let occurancesWithoutRemainder = (n / sCharacterCount) * occurrences

    return occurancesWithoutRemainder + totalOccurrences
}

repeatedString(s: "aba", n: 10)

repeatedString(s: "kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm", n: 736778906400)
