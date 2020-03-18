import UIKit

//:**Range**
let rangeInt = 1..<5

var someRangeInt : Range<Int> = 1..<10
type(of: someRangeInt)

var anotherRangeInt = 51..<59
type(of: anotherRangeInt)

var rangeInt2 : Range<Int> = 1..<10

//: Using with String,Double and Char
var rangeString: Range<String> = "a"..<"z"
type(of:rangeString)

var rangeChar : Range<Character> = "a"..<"z"

var rangeDouble : Range<Double> = 5.0..<5.7
type(of:rangeDouble)

var firstElement = 10,secondElement = 18
var rangeOperator : Range<Int> = firstElement..<secondElement

//: *Partial Range Up To*
var myRange = ..<50
type(of:myRange)

var anotherRange : PartialRangeUpTo<Int> = ..<20

let someRange = ..<5
type(of:someRange)

//: **Closed Range**

var clRange = 1...10
type(of:clRange)

let someClRange = 5...25
type(of:someClRange)

//: *Partial Range From*
var infRange = 1...
type(of:infRange)
let anotherInfRange = 2...

//: *Partial Range Through*
var exampleRange = ...5
let anotherExample = ...20
type(of:anotherExample)

//:**Properties and Methods**

var thatRange = 1..<25
thatRange.count

let thisRange = 5..<6
thisRange.count

var floatRange : ClosedRange<Float> = 5.7...6.4
floatRange.contains(6.101)
thisRange.contains(25)

var emptyRange : Range<Int> = 5..<5
emptyRange.count
emptyRange.isEmpty

let notEmptyRange : ClosedRange<Int> = 5...5
notEmptyRange.isEmpty
notEmptyRange.count
notEmptyRange.contains(20)

thatRange.upperBound
thatRange.max()
infRange.lowerBound
infRange.min()


1>=2
2==2

1...4
1..<4

3...
...5
..<5
