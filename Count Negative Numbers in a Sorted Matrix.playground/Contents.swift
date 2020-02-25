import UIKit

/*
 Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise.

 Return the number of negative numbers in grid.
 */

func countNegatives(_ grid: [[Int]]) -> Int {
    var numberOfNegatives = 0
    
    for array in grid {
        for number in array {
            if number < 0 {
                numberOfNegatives += 1
            }
        }
    }
    
    return numberOfNegatives
}

countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])
countNegatives([[3,2],[1,0]])
countNegatives([[1,-1],[-1,-1]])
countNegatives([[-1]])

