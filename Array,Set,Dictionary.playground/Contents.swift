import UIKit

//: **Последовательности**
let oneTwoThree = 1...3
for number in oneTwoThree {
    print(number)
}
//:**МАССИВЫ**
let alphabetArray = ["a","b","c"]

var mutableArray = [2,4,6]

let unmutableArray = ["one","two","three"]
var Array2 = unmutableArray
Array2[1] = "four"
Array2
unmutableArray

//:*Создание массива с помощью передачи списка значений*
var alphabetArray2 = Array(arrayLiteral: "a","b","c")

//:*Создание массива с помощью оператора диапазона*
let lineArray = Array(0..<9)
//:*Создание массива повторяющихся значений*
let repeatArray = Array(repeating : 10, count: 3)

//Доступ к элементам массива
alphabetArray2[2]
alphabetArray2[2] = "f"
alphabetArray2

var subArray = mutableArray[1...2]
//Замена подмассива массивом
alphabetArray2[1...2] = ["five"]
alphabetArray2

//Явное задание типа данных массива
var firstArray : [String] = ["x","y","z"]
var secondArray : Array<Double> = Array(arrayLiteral: 2.4, 5.8, 2.389)
var thirdArray : [Int] = Array(5..<10)

var forthArray: Array<String> = Array(repeating: "I love swift!", count: 3)

//: *Создание пустого массив*
var emptyArray : [Int] = []
var anotherEmptyArray = [String]()
// ///////////////////////////////
var alphaArray : [Int?] = Array(repeating: nil, count: 3)

//:*Сравнение Массивов*
let x1 = "a"
let x2 = "b"
let x3 = "c"
if ["a","b","c"] == [x1,x2,x3] {
    print("массивы эквивалентны")
}
else {
    print("Массивы не эквивалентны")
}

//: **Слияние массивов**
var arrayOne: Array<Int> = Array(arrayLiteral: 1,2,3)
var arrayTwo: [Int] = Array(repeating: 5,count: 3)
var arrayThree: Array<Int> = Array(3...7)

var mergeArray: [Int] = arrayOne + arrayTwo
mergeArray += arrayThree

//: **Многомерные массивы**
var arrayOfArrays : [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
arrayOfArrays[2]
arrayOfArrays[2][1]

//:**Базовые свойства и методы массивов**

var someArray : [Int] = Array(arrayLiteral: 1,2,3,4,5,6,7,8,9)
someArray.count             //Возвращает количество элементов в массиве
let anotherArray = [String]()
anotherArray.count
anotherArray.isEmpty        //Если массив пустой то он вернёт true
//Используем метод count
var someArray2 = someArray[someArray.count-5...someArray.count-1]
for number in someArray2 {
    print(number)
}

someArray.suffix(4)         //метод получения мно-ва элементов(параметр: количество элементов с конца)
someArray.first             //первый элемент
someArray.last              //последний элемент
someArray.append(10)       //добавить элемент в конец массива
someArray

var someArray3 : Array<Int> = Array(arrayLiteral: 1,2,3,4,5)
someArray3.insert(100,at: 4)//Вставляем новый одиночный элемент в указанное место в массиве
someArray3.insert(24, at: 6)

//:*Методы удаления элементов в массиве*
someArray3.remove(at:2)
someArray3.removeLast()      //Удаляем последний
someArray3.removeFirst()     //Удаляем первый
someArray3

let myArray : Array<Int> = Array(arrayLiteral: 1,2,3,4,5)
myArray.dropFirst()         //Применяется для неизменяемого массива
myArray
myArray.dropLast(3)

var numbersArray : [Int] = [3,4,5,6,7,5,6,4,4,2,4]
numbersArray.contains(23)   //Метод проверки существования того или иного элемента
numbersArray.contains(4)

//:*Поиск первого вхождения элемента*
numbersArray.index(of:4)
numbersArray.index(of:23)

//: *Поиск минимального и максимального значений*
numbersArray.min()
numbersArray.max()

//:*Изменяем порядок на противоположный*
numbersArray.reverse()

//: **ArraySlice**
var arrayOfNumbers : [Int] = Array(1...10)

var slice = arrayOfNumbers[4...6]
slice
type(of: slice)
var arrayFromSlice = Array(slice)
type(of:arrayFromSlice)

arrayOfNumbers[5]
slice[5]

// ////////////////////
var num : Float = 2.1
num.hashValue         //Доступ к хэш значению параметра

//: **НАБОРЫ**
var dishes: Set<String> = ["хлеб","овощи","тушенка","вода"]         //Явно указали тип
var dishesTwo: Set = ["Спагетти","Рыба","Огурцы"]                   //Неявно указали тип
let dishesThree : Set = [1,2,3,4,6]

var players = Set<String>(arrayLiteral: "Ronaldo","Messi","Ribery") //Создали с помощью функции при явном задании
var playersTwo = Set(arrayLiteral: "Jovic", "Higuain", "Dybala")    //Создали с помощью функции при НЕявном задании

//:*Создание пустого набора*
var dishes2 : Set<String> = ["хлеб","огурцы","Курица"]
var emptySet = Set<String>()                //Создание пустого набора
dishes2 = []                                //:**Удаление элементов набора**
var aanotherEmptySet = Set<String>()
dishes2 = []

//: **Добавление и удаление элемента из набора**
//добавление
var musicStyleSet : Set<String> = []
musicStyleSet.insert("Classic")
musicStyleSet
var musicStyleSet2 = Set<String>(arrayLiteral:"Jazz","Hip Hop")
musicStyleSet2.insert("Hip Hop")

//удаление
musicStyleSet2.remove("Jazz")
musicStyleSet2.remove("Boogie Woogie")
//удаляем все элементы
musicStyleSet2.removeAll()

//:*Проверка наличия соответствующего значения в наборе*
var musicStyle : Set<String> = ["Funk","Boogie Woogie","Jazz","Rock"]
if musicStyle.contains("Rock") {
    print("я люблю рок")
}
else {
    print("Я НЕ люблю рок!")
}

//:**Базовые свойства и методы наборов**
let oddDigits : Set = [1,3,5,7,9]
let evenDigits = Set(arrayLiteral: 0,2,4,6,8)
var differentDigits : Set<Int> = [3,4,7,8]

//:*Пересечение наборов*
var inter = differentDigits.intersection(evenDigits).sorted()
var symmDif = differentDigits.symmetricDifference(oddDigits).sorted()                   //:**Можно вызывать методы в одной строке**
var union = differentDigits.union(evenDigits).sorted()
var subtract = differentDigits.subtracting(oddDigits).sorted()                          //Разность


// //////////////////////////////////////////////////////////////////////////////////

//:*Эквивалентность наборов*
let firstSet : Set<Int> = [2,4]
let secondSet = Set<Int>(arrayLiteral: 4,2)
if firstSet == secondSet {
    print("Наборы эквивалентны")
}
//: **Субнабор, Супернабор, НЕпересечение наборов, Супернабор(Субнабор) не равный указанному мн-ву**
var aSet : Set = [1,3,5,7,9]
var bSet : Set<Int> = [1,3]
var cSet = Set(arrayLiteral: 0,2,4,6,8)

if bSet.isSubset(of: aSet) {
    print("bSet is Subset of aSet")                     //:**Субнабор**
}

if aSet.isSuperset(of: bSet) {
    print("aSet is Superset of bSet")                   //:**Супернабор**
}

if aSet.isDisjoint(with: bSet) {
    print("aSet and cSet are disjoint!")                //:**Наборы не пересекаются**
}

var dSet = Set<Int>(arrayLiteral:1,3,5,7,9)
if dSet.isStrictSubset(of: aSet) {
    print("\ndSet вложен в aSet")
}
else {
    print("\ndSet не вложен ,а равен aSet!")
}

if aSet.isStrictSuperset(of: bSet) {
    print("\naSet содержит в себе bSet")
}

// ////////////////////////////////////////////////////////////////////////////////////////////////////////

//: **СЛОВАРИ**

var dictionary = ["one": "один","two":"два", "three":"три"]       //: *Создание словаря*

//Создание словаря на основе двух произвольных коллекций
let tuplesArray : Array<(Int,Int)> = Array(arrayLiteral: (2,5), (3,6), (4,8))

var anotherDictionary = Dictionary(uniqueKeysWithValues: tuplesArray)

let anotherTuplesArray : Array<(String,String)> = Array(arrayLiteral: ("First", "Ronaldo"), ("Second", "Messi"), ("Third","Van Dijk"))

var anotherDictionary2 = Dictionary(uniqueKeysWithValues: anotherTuplesArray)

let cars : Array<String> = Array(arrayLiteral: "Bugatti", "Ferrari", "Ford", "BMW")
let speed : [Double] = [407.2, 389.7, 324.1, 348,4]

var carsSpeedDict = Dictionary(uniqueKeysWithValues: zip(cars, speed))

// ///////////////////////////////////////////////

//:**Взаимодействие с элементами словаря**

var countryDict = ["Rus": "Россия", "Fra": "Франция", "Esp": "Испания"]
countryDict["Fra"]                                              //Получение значения
countryDict["Rus"] = "Российская Федерация"                     //Изменение значение словаря

countryDict.updateValue("Россия" ,forKey:"Rus")                 //Возвращает опциональное старое значение
carsSpeedDict.updateValue(364.8, forKey: "Ford")

//: *Добавление и удаление элемента из словаря*
carsSpeedDict["Opel"] = 278                              //Добавление
carsSpeedDict["Ferrari"] = nil                          //Удаление
carsSpeedDict.removeValue(forKey: "Ford")              //Удаление

let myCarsSpeed : Double = carsSpeedDict["Bugatti"]!           //: *Возвращает опциональный тип данных*

//:*Явное указание типа словаря*
var dict : Dictionary<String, Int>
var dict2 : [String: Int]

//:*Создание пустого словаря*
var dict3 : Dictionary<Double,Double> = [:]
var dict4 : [String:Int] = [:]
//уничтожение элементов словаря
countryDict = [:]

//:**Базовые свойства и методы словаря**

carsSpeedDict.count
countryDict.count
countryDict.isEmpty

var phonePrices : Dictionary<String,Double> = ["Iphone": 2234.4,"Sony": 1324.1, "Nokia": 889.7]
var keys = phonePrices.keys
var values = phonePrices.values

