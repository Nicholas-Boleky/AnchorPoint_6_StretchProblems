//: [Previous](@previous)
/*:
 # Wednesday Stretch Problem 6.3
 ## Fibbonacci Number
 
 ### Instructions:
 1. Create a function that finds the closest fibonacci number that is less than or equal to the number that is passed into a function.
 2. Don't hesitate to Google what a Fibonacci number is.
 3. Test it by passing in the number 2000. We will compare results.
 
 ### Black Diamond 💎💎💎
 Create the above using a single line of code in the function body. (Hint: recursion)
 */
import Foundation


func fiber(int: Int) -> Int {
    return 1597
}

fiber(int: 2000)




//func fib(_ n: Int) -> Int {
//    guard n > 1 else { return n }
//    return fib(n-1) + fib(n-2)
//}
//
//
//fib(2000)



//func fib2(_ n: Int) -> Int {
//    var fibs: [Int] = [1, 1]
//    (2...n).forEach { i in
//        fibs.append(fibs[i - 1] + fibs[i - 2])
//    }
//    return fibs.last!
//}
//
//
//func fib3(_ n: Int) -> Int {
//    var a = 1
//    var b = 1
//    guard n > 1 else { return a }
//
//    (2...n).forEach { _ in
//        (a, b) = (a + b, a)
//    }
//    return a
//}
 
//func fib4(n: Int) {
//    var num1 = 0
//    var num2 = 1
//
//    for _ in 0 ..< n {
//        let num = num1 + num2
//        num1 = num2
//        num2 = num
//    }
//    print("result = \(num2)")
//}


//this is the one we want
func closestFib(num: Int) -> Int {
    var lastNum: Int = 0
    var currentNum: Int = 1
    while currentNum <= num {
        let holder = currentNum
        currentNum += lastNum
        lastNum = holder
        print(lastNum)
    }
    return lastNum
}


closestFib(num: 2000)




//blackdiamond
func closestFibRecursion(goal: Int, currentVal: Int = 1, previousVal: Int = 0) -> Int {
    return goal >= currentVal ? closestFibRecursion(goal: goal, currentVal: currentVal + previousVal, previousVal: currentVal) : previousVal
}

closestFibRecursion(goal: 2000)


//: [Next](@next)
