import UIKit

/*
 
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.
 Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
 Function Description
 Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.
 timeConversion has the following parameter(s):
 s: a string representing time in  hour format
 Input Format
 A single string  containing a time in -hour clock format (i.e.:  or ), where  and .
 Constraints
 All input times are valid
 Output Format
 Convert and print the given time in -hour format, where .
 Sample Input 0
 07:05:45PM
 Sample Output 0
 19:05:45
 
 */


func timeConversion(s: String) -> String {

    var output = Array(s)
    output.removeLast()
    output.removeLast()
    let firstNumberToConsider = output[0]
    let secondNumberToConsider = output[1]
    guard let firstNumberAsInt = Int(String(firstNumberToConsider)) else { return s }
    guard let secondNumberAsInt = Int(String(secondNumberToConsider)) else { return s }
    
    if (s.contains("p") || s.contains("P")) {
        
        if firstNumberAsInt == 1 && secondNumberAsInt == 2 {
            // No nothing
        } else {
            let newSecondNumberAsArrayOfString = Array(String(secondNumberAsInt + 2))
            let newFirstNumberAsArrayOfString = Array(String(firstNumberAsInt + 1))
            output[0] = newFirstNumberAsArrayOfString[0]
            output[1] = newSecondNumberAsArrayOfString[0]
            return String(output)
        }
    }
    
    if (s.contains("a") || s.contains("A")) {
        
        if firstNumberAsInt == 1 && secondNumberAsInt == 2 {
            output[0] = "0"
            output[1] = "0"
            return String(output)
        }
    }

    return String(output)
}

timeConversion(s: "07:05:45PM")
timeConversion(s: "01:05:45PM")
timeConversion(s: "12:05:45AM")
timeConversion(s: "06:05:45AM")
timeConversion(s: "02:34:50PM")
timeConversion(s: "11:59:59PM")
