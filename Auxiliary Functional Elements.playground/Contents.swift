import UIKit

//:**.map(_:) method**

var array = [1,2,3,4]

var newArray = array.map{$0} // Nothing happens

var squaredMap = array.map({            // squared elements
    (value: Int) -> Int in
    return value * value
})

squaredMap = array.map{$0 * $0}     //short form
squaredMap

var boolArray = array.map({
    (value: Int) -> Bool in
    return value > 2
})

boolArray = array.map{$0 > 2} //Changed type of values

var mapped = array.map{Array(repeating: $0,count: $0)}    //Created Two-dimensional arrays
mapped

//: using .map(_:) for Dictionaries
let milesToCity : [String:Double] = ["Moscow": 100.0, "Dubai" : 50.0, "Beijing": 120.0]
var kmToDest = milesToCity.map({
    (name: String, miles: Double) -> [String:Double] in
        return [name: miles * 1.6093]
})
// /////////////////////////////////////////////////////////////
//:**.mapValues(_:) method**

//.map is not good with Dictionaries
var newCollection = milesToCity.map{$0}
type(of: newCollection)

var anotherCollection = milesToCity.mapValues{$0 + 1.0}
anotherCollection
type(of: anotherCollection)
//  ///////////////////////////////////////////////////////////
//:**.filter(_:) method**

let numbers : Array<Int> = [1,2,4,7]
let even = numbers.filter{$0 % 2 == 1}
even

//filter the elements of Dictionary
var starsDistanceDict = ["Wolf 359": 7.78, "Alpha Centauri B": 4.37,"Proxima Centauri":4.24,"Alpha Centauri A":4.37]

let closeStars = starsDistanceDict.filter{$0.value < 5.0}
closeStars

// //////////////////////////////////////////////////////////
//:**.reduce(_:_:) method**                     //This method is reducing all elements of collection into one value

var cash : Array<Int> = [10,50,100,500]
let totalCash = cash.reduce(210,+)
totalCash

let multiTotal = cash.reduce(210, {$0 * $1})
multiTotal

let anotherOne = cash.reduce(210, {$0 - $1})
anotherOne
// //////////////////////////////////////////////////////////
//: **.flatMap(_:) method**

let newArray2 : [Int] = [1,2,3,4]
var flatMapped : [Int] = newArray2.flatMap{Array(repeating: $0, count: $0)}
print(flatMapped)

//: Another example
let someArray = [[1,2,3,4,5],[11,44,1,6],[16,403,321,10]]
let filterSomeArray : [Int] = someArray.flatMap({
    (array:[Int]) -> [Int] in
    return array.filter({
        (value: Int) -> Bool in
        return (value % 2 == 1)
    })
})
print(filterSomeArray)

let someArray2 = someArray
let filterSomeArray2 = someArray2.flatMap{$0.filter{$0 % 2 == 0}}
print(filterSomeArray2)

// practice

let matrix : [[Int]] = [[],[2,0,12,20],[50,45,23,20]]
let matrix2 : [Int] = matrix.flatMap{$0.filter{$0 % 2 == 0}}
print(matrix2)

let bank = [20,50,100,200]
let myWallet : Int = 140
let sum : Int = bank.reduce(myWallet,+)
print("my budget = \(sum)")

let productPrize : Dictionary<String,Double> = ["IphoneXR": 1599.9, "Apple Watch": 999.9,"Macbook Air": 2500.0]
var newPrizesOfProducts = productPrize.mapValues{$0 + 150.0}
print("New prizes : \(newPrizesOfProducts)")

//  ///////////////////////////////////////////////////////////////

//: **.zip(_:_:) method**

let Collection : [Int] = [2,5,10]
let squaredCollection : [Int] = [4,25,100]

var zipSequence = zip(Collection,squaredCollection)
let zipArray = Array(zipSequence)

let zipDictionary = Dictionary(uniqueKeysWithValues: zipSequence)


