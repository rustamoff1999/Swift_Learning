import UIKit

//:**Bubble sort**

var a : Array<Int> = Array(1...10).reversed()
var n = a.count
var j = 0
while j < n-1 {
    var i = n-1
    while i > j {
        if a[i] < a[i-1] {(a[i],a[i-1]) = (a[i-1],a[i])}
        i -= 1
    }
    j += 1
}
print(a) //[1,2,3,4,5,6,7,8,9,10]

//:**Factorial**

func factorial(_ num: UInt) -> UInt {
    guard num != 0 && num != 1 else {return 1}
    var result: UInt = 1
    var i : UInt = 1
    while i <= num {
        result *= i
        i += 1
    }
    return result
}

factorial(5) //120

//:**Fibonacci**

var (f1,f2) = (1,1)
print(f1,f2,terminator:" ")
for _ in 1...9 {
    (f1,f2) = (f2,f2+f1)
    print(f2,terminator:" ")
} //1 1 2 3 5 8 13 21 34 55 89


