import UIKit

/*
 
 Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.
 
 */

func createRandomNumber(minimum: Int, maximum: Int) -> Int {
    return Int.random(in: minimum...maximum)
}

createRandomNumber(minimum: 1, maximum: 5)
createRandomNumber(minimum: 8, maximum: 10)
createRandomNumber(minimum: 12, maximum: 12)
createRandomNumber(minimum: 12, maximum: 18)

