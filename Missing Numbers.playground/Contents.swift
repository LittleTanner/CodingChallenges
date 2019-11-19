import UIKit

/*
 
 Numeros the Artist had two lists that were permutations of one another. He was very proud. Unfortunately, while transporting them from one exhibition to another, some numbers were lost out of the first list. Can you find the missing numbers?
 As an example, the array with some numbers missing, . The original array of numbers . The numbers missing are .
 Notes
 If a number occurs multiple times in the lists, you must ensure that the frequency of that number in both lists is the same. If that is not the case, then it is also a missing number.
 You have to print all the missing numbers in ascending order.
 Print each missing number once, even if it is missing multiple times.
 The difference between maximum and minimum number in the second list is less than or equal to .
 Function Description
 Complete the missingNumbers function in the editor below. It should return a sorted array of missing numbers.
 missingNumbers has the following parameter(s):
 arr: the array with missing numbers
 brr: the original array of numbers
 Input Format
 There will be four lines of input:
  - the size of the first list,
 The next line contains  space-separated integers
  - the size of the second list,
 The next line contains  space-separated integers
 Constraints




 Output Format
 Output the missing numbers in ascending order.
 Sample Input
 10
 203 204 205 206 207 208 203 204 205 206
 13
 203 204 204 205 206 207 205 208 203 206 205 206 204
 Sample Output
 204 205 206
 Explanation
  is present in both arrays. Its frequency in  is , while its frequency in  is . Similarly,  and  occur twice in , but three times in . The rest of the numbers have the same frequencies in both lists.
 
 */

func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {

    var missingNumbersUnsorted: [Int] = []
    var dictOfArray1: [Int : Int] = [:]
    var dictOfArray2: [Int : Int] = [:]
    
    for number in arr {
        if let value = dictOfArray1[number] {
            dictOfArray1[number] = value + 1
        } else {
            dictOfArray1[number] = 1
        }
    }
    
    for number in brr {
        if let value = dictOfArray2[number] {
            dictOfArray2[number] = value + 1
        } else {
            dictOfArray2[number] = 1
        }
    }
    
    for (key, _) in dictOfArray2 {
        if dictOfArray2[key] != dictOfArray1[key] {
            missingNumbersUnsorted.append(key)
        }
    }
    
    return missingNumbersUnsorted.sorted()
}

missingNumbers(arr: [203, 204, 205, 206, 207, 208, 203, 204, 205, 206], brr: [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 205, 206, 204])
missingNumbers(arr: [11, 4, 11, 7, 13, 4 ,12, 11, 10, 14], brr: [11, 4, 11, 7, 3, 7, 10, 13, 4, 8, 12, 11, 10, 14, 12])
