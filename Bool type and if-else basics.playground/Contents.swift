import UIKit

var isDragon = true
let isTroll : Bool = false

if isDragon {
    print("Hello, Dragon!")
}
else {
    print("Hello, Troll!")
}

var someBool = true
!someBool
someBool

var firstBool = true, secondBool = false, thirdBool = true
firstBool && secondBool
firstBool || secondBool

firstBool && (secondBool || thirdBool) //Выражение в скобках выполняется первым
