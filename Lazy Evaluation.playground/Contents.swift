import UIKit

//:*LazyMapCollection*
var countryDict = ["RUS":"Российская Федерация","BEL":"Беларусь","UKR":"Украина"]
var keys = countryDict.keys
type(of:keys)

var mySet = Set(keys)
var myArray = Array(keys)

//:*Closures in Lazy Evaluations*

var arrayOfNames = ["Helga","Bazil","Alex"]
print(arrayOfNames.count)

let nextName = {arrayOfNames.remove(at: 2)}

print(arrayOfNames.count)

nextName()

print(arrayOfNames.count)

//:**.lazy method**

var myCollection = [1,2,3,4,5,6].lazy.map{value in return value * value}

Array(myCollection)

//second example
var myFilteredCollection = [1,2,3,4,5,6].lazy.map{$0 * $0}.filter{$0 % 3 == 0}

Array(myFilteredCollection)
//third example
var reductedCollection = myCollection.lazy.map{$0 + 12}.reduce(3,+)
var sum = Int(reductedCollection)

//forth example

var flatMappedCollection = myCollection.lazy.map{$0 - 1}.flatMap{ Array(repeating: $0,count: 3) }.map{$0 - 10}
var resultArray : [Int] = Array(flatMappedCollection)
