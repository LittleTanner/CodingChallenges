import UIKit

/*
 
Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
 
 */

func FizzBuzz(startingNumber: Int, endingNumber: Int){
    
    for number in startingNumber...endingNumber {
        if number % 3 == 0 && number % 5 == 0 {
            print("Fizz Buzz")
        } else if number % 3 == 0 {
            print("Fizz")
        } else if number % 5 == 0 {
            print("Buzz")
        } else {
            print(number)
        }
    }
    
}

FizzBuzz(startingNumber: 1, endingNumber: 100)


// Paul's slightly more efficient solution
func challenge16b() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

challenge16b()
