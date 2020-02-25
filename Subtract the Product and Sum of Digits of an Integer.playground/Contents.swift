import UIKit

/*
Given an integer number n, return the difference between the product of its digits and the sum of its digits.
 */


func subtractProductAndSum(_ n: Int) -> Int {
    var product = 1
    var sum = 0
    
    let numberAsString = String(n)
    
    for number in numberAsString {
        guard let num = Int(String(number)) else { return product - sum }
        product *= num
        sum += num
    }
    
    return product - sum
}

subtractProductAndSum(234)
subtractProductAndSum(4421)
