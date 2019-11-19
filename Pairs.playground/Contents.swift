import UIKit

/*
 
 You will be given an array of integers and a target value. Determine the number of pairs of array elements that have a difference equal to a target value.
 
 For example, given an array of [1, 2, 3, 4] and a target value of 1, we have three values meeting the condition: , , and .
 Function Description
 Complete the pairs function below. It must return an integer representing the number of element pairs having the required difference.
 pairs has the following parameter(s):
 k: an integer, the target difference
 arr: an array of integers
 Input Format
 The first line contains two space-separated integers  and , the size of  and the target value.
 The second line contains  space-separated integers of the array .
 Constraints



 each integer  will be unique
 Output Format
 An integer representing the number of pairs of integers whose difference is .
 Sample Input
 5 2
 1 5 3 4 2
 Sample Output
 3
 Explanation
 There are 3 pairs of integers in the set with a difference of 2: [5,3], [4,2] and [3,1] .
 
*/


func pairs(k: Int, arr: [Int]) -> Int {
    
    var numberOfPairs = 0
    var arrayOfPairs: [[Int]] = []
    var index = 0
    
    for _ in 0...(arr.count - 1) {
        
        for number in 0...(arr.count - 1) {
            var containsPair = false
            let pair1 = [index, number]
            let pair2 = [number, index]
            
            if arrayOfPairs.contains(pair1) || arrayOfPairs.contains(pair2) {
                containsPair = true
            }
            
            if index != number && containsPair == false {
                if abs(arr[index] - arr[number]) == k {
                    numberOfPairs += 1
                    arrayOfPairs.append([index, number])
                    print("Index: \(arr[index])")
                    print("Number: \(arr[number])")
                }
            }
        }
        
        index += 1
    }
    
    print(arrayOfPairs)
    
    return numberOfPairs
}

pairs(k: 2, arr: [1, 5, 3, 4, 2]) // 3
pairs(k: 1, arr: [363374326, 364147530, 61825163, 1073065718, 1281246024, 1399469912, 428047635, 491595254, 879792181, 1069262793]) // 0
pairs(k: 2, arr: [1,3,5,8,6,4,2]) // 5

