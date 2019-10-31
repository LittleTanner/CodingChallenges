import UIKit

/*
 
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.
 
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    var topLeftToBottomRightDiagonal = 0
    var topRightToBottomLeftDiagonal = 0
    var index = 0
    
    for array in arr {
        topLeftToBottomRightDiagonal += array[index]
        topRightToBottomLeftDiagonal += array[(array.count - 1) - index]
        index += 1
    }
    
    return abs(topLeftToBottomRightDiagonal - topRightToBottomLeftDiagonal)
}

diagonalDifference(arr: [[1,2,3], [4,5,6], [9,8,9]])
