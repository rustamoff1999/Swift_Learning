import UIKit

var char : Character = "a"

var str : String = "dragon"

var emptyString = ""
var anotherEmptyString = String()

var str1 : String
str1 = "Hello, Troll"

//: **Многострочный строковый литерал**
var longStr = """
    Это многострочный
    строковый
    литерал
"""
//: *Приведение типов*
var notEmptyString = String("Hello,Fuad")

var numDouble = 75.12
var strDouble = String(numDouble)

//: **Интерполяция и Конкатенация**
var me = "My weight is "
var weight = 63
var kg = " kilos"
var str2 = me + String(weight) + kg //Конкатенация
print(str2)

var height : Double = 10.72
var metres = "метров"
var str3 = "Высота этого здания \(height*3.45) \(metres)"//Интерполяция
