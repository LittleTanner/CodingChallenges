import UIKit

/*
 Given an array nums of integers, return how many of them contain an even number of digits.
 */

func findNumbers(_ nums: [Int]) -> Int {
    var numberOfEvenDigits = 0
    var arrayOfDigits: [Int] = []
    
    for num in nums {
        let numberAsString = String(num)
        arrayOfDigits = []
        
        for number in numberAsString {
            guard let number = Int(String(number)) else { return numberOfEvenDigits }
            arrayOfDigits.append(number)
        }
        
        if arrayOfDigits.count % 2 == 0 {
            numberOfEvenDigits += 1
        }
        
    }
    
    return numberOfEvenDigits
}

findNumbers([12, 345, 2, 6, 7896])
findNumbers([555, 901, 482, 1771])
