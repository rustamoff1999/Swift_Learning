import UIKit

//: *Инициализатор Int(_:)  возвращает опциональный тип данных*
var convertible = "1945"
var Iconvert = Int(convertible)

var inconvertible = "Hello, World!"

var Iconvert2 = Int(inconvertible)


//: *Установление значения в опциональный тип данных и уничтожение его*
var myPhone : String? = "Sony"
myPhone = nil
myPhone = "iPhone"

var myPhone1 = Optional("SonyX")//: Функция **Optional**
myPhone1
myPhone1 = nil
myPhone1

//Извлечение опционального значения
typealias num = Int
var optional1 : num? = 1800
optional1 = optional1! + 200 //: **Принудительное извлечение значения**
var notOptional = optional1! + 200
let number1 = optional1!

//:**Косвенное извлечение значения**
var optional2 : (Int,Int)! = (15,228)
let variable = optional2
