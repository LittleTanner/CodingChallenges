import UIKit

/*
 
 Swap two positive variable integers, a and b, without using a temporary variable
 
 */

func swapVariables(a: inout Int, b: inout Int) {
    
    (a, b) = (b, a)
}

var a = 1
var b = 2

swapVariables(a: &a, b: &b)

a
b

swap(&a, &b)

a
b

// This taught me about swift's global swap function and ways i could use it in sorting and reminded me about how to use inout
