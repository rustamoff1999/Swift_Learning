import UIKit

//:*Character inside String*

var str = "Hello!"
str.count

let string = "Hello,Fuad!"
string.count

//: *Grafem-Clusters*

var char: Character = "\u{E9}"
char
let someChar : Character = "\u{65}\u{301}"

char == someChar

var anotherChar : Character = "\u{D3}"

var thumbsUpSign = "\u{1f44d}"
var emoji = "\u{1f3fd}"
var combine = "\u{1f44d}\u{1f3fd}"

let cafeSimple = "caf\u{E9}"                //String is a collection if Grafem-Clusters
let cafeCombine = "caf\u{65}\u{301}"
cafeSimple.count
cafeCombine.count

//:*String indexes*

var name = "e\u{301}lastico"
let index = name.startIndex         //.startIndex
var myChar = name[index]
myChar
type(of:myChar)

type(of: index)
var indexLastChar = name.endIndex   //.endIndex
var myIndex = name.index(before: indexLastChar)     //index(before: )
name[myIndex]

let country = "espa\u{F1}a"
let someEndIndex = country.endIndex
let anotherIndex = country.index(before: someEndIndex)
country[anotherIndex]
country[country.startIndex]

let secondCharIndex = country.index(after: country.startIndex)      //index(after: )
country[secondCharIndex]

name[name.index(after: index)]

let fifthCharIndex = name.index(name.startIndex, offsetBy: 4)       //index(_:offsetBy:)
name[fifthCharIndex]

let fifthIndexOfCountryName = country.index(country.startIndex,offsetBy: 4)
country[fifthIndexOfCountryName]

//unicodescalars

name.count
name.unicodeScalars
name.unicodeScalars.count

//:**Substring**

var someCountries: String = "ItalySpainPortugalScotand"
let firstChar = someCountries.index(someCountries.startIndex,offsetBy: 10)
someCountries[firstChar]
let lastChar = someCountries.index(firstChar,offsetBy: 7)
someCountries[lastChar]

let oneCountry = someCountries[firstChar...lastChar]
type(of: oneCountry)
let stringCountry = String(oneCountry)
type(of:oneCountry)

//another example

let someShops : String = "ZARAMassimoDuttiPull\u{26}Bear"
let firstCharacter : String.Index = someShops.index(someShops.startIndex, offsetBy: 16)
someShops[firstCharacter]
let lastCharacter : String.Index = someShops.index(before:someShops.endIndex)
someShops[lastCharacter]
let pb : Substring = someShops[firstCharacter...lastCharacter]

let pb2 : Substring = someShops[firstCharacter...]

pb == pb2
