//: [Previous](@previous)
/*:
 # Tuesday Stretch Problem 6.2
 ## Add Ints
 
 ### Instructions:
 Create a func called add where the method allows one to pass as many or as few Ints as desired and then adds them together and returns the result.
 
 Example: If I call add(3, 7), it prints out 10. Example: If I call add(3, 7, 2, 4), it prints out 16. Example: If I call add(3, 7, 2, 9, 12, 11), it prints out 44.
 */

import Foundation


func sumOf(numbers: Int...) -> Int {
    var total: Int = 0
    for i in numbers {
        total += i
    }
    return total
    }

sumOf(numbers: 3,4,3)

//func sum2(numbers: Int...) -> Int {
//    let sum = numbers.reduce(0 : Int)
//}


//: [Next](@next)
