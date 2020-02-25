import UIKit

/* Given a non-negative integer num, return the number of steps to reduce it to zero. If the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
 
 */



func numberOfSteps (_ num: Int) -> Int {
    var number = num
    var stepsToZero = 0
    
    while number != 0 {
        if number % 2 == 0 {
            number /= 2
            stepsToZero += 1
        } else {
            number -= 1
            stepsToZero += 1
        }
    }
    
    return stepsToZero
}

numberOfSteps(14)
numberOfSteps(8)
numberOfSteps(123)

