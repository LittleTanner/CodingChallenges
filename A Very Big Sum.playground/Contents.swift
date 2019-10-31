import UIKit

/*
 
Calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large.
 
*/


func aVeryBigSum(ar: [Int]) -> Int {
    var sum = 0
    
    for number in ar {
        sum += number
    }
    
    return sum
}

aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
