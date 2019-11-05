import UIKit

/*
 
 A left rotation operation on an array shifts each of the array's elements  unit to the left. For example, if  left rotations are performed on array , then the array would become .
 Given an array  of  integers and a number, , perform  left rotations on the array. Return the updated array to be printed as a single line of space-separated integers.
 Function Description
 Complete the function rotLeft in the editor below. It should return the resulting array of integers.
 rotLeft has the following parameter(s):
 An array of integers .
 An integer , the number of rotations.
 Input Format
 The first line contains two space-separated integers  and , the size of  and the number of left rotations you must perform.
 The second line contains  space-separated integers .
 Constraints



 Output Format
 Print a single line of  space-separated integers denoting the final state of the array after performing  left rotations.
 Sample Input
 5 4
 1 2 3 4 5
 Sample Output
 5 1 2 3 4
 Explanation
 When we perform  left rotations, the array undergoes the following sequence of changes:

 
 */

func rotLeft(a: [Int], d: Int) -> [Int] {
    
    var outputArray = a
    
    if d == a.count || d % a.count == 0 {
        return outputArray
    }
    
    if d > a.count {
        let remainder = d % a.count
        outputArray.append(contentsOf: outputArray[0..<remainder])
        outputArray.removeSubrange(0..<remainder)
    } else {
        outputArray.append(contentsOf: outputArray[0..<d])
        outputArray.removeSubrange(0..<d)
    }

    return outputArray
}

rotLeft(a: [1,2,3,4,5], d: 7)
rotLeft(a: [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51], d: 10)
