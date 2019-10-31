import UIKit

/*
 
 Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.

*/

func plusMinus(arr: [Int]) -> Void {
    var postiveInts: Double = 0
    var negativeInts: Double = 0
    var zeroInts: Double = 0
    let arrayCount = Double(arr.count)
    
    for item in arr {
        switch item {
        case _ where item == 0:
            zeroInts += 1
        case _ where item > 0:
            postiveInts += 1
        case _ where item < 0:
            negativeInts += 1
        default:
            print("Error?")
        }
    }

    print(String(format: "%.6f", postiveInts/arrayCount))
    print(String(format: "%.6f", negativeInts/arrayCount))
    print(String(format: "%.6f", zeroInts/arrayCount))
}

plusMinus(arr: [-4,3,-9,0,4,1])
