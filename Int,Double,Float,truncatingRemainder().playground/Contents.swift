import UIKit

var someText = "Hello, Playground"
var hobbitName = "Aaron"
var dragonName : String
var elfName: String = "John"

//Copy value
var value1 = 25
var copyValue1 = value1
print(value1,copyValue1)
value1 = 50
print(value1,copyValue1)

//Int
var integer : Int
integer = -28
var Uint = 10 //: **Unsigned int**

var minInt8 = Int8.min
var maxInt8 = Int8.max
var minUInt8 = UInt8.min
var maxUInt8 = UInt8.max

//Float,Double
var num : Float = 3.14
var num2 = 8.6

//truncatingRemainder(dividingBy:)

var numone : Float = 3.14
var numtwo : Float = 1.01
var res1 = numone.truncatingRemainder(dividingBy:numtwo)
var res2 = -numone.truncatingRemainder(dividingBy:numtwo)
var res3 = numone.truncatingRemainder(dividingBy:-numtwo)
