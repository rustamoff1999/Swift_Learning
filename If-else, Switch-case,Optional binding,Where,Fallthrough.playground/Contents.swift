import UIKit

//: **Функция assert**
var dragonAge = 230
assert(dragonAge>=225,"Ваш дракон слишком молод, чтобы продолжать")
/*assert(dragonAge>=235,"Ваш дракон слишком молод, чтобы продолжать")
dragonAge*/

var dragon : Bool? = true
assert(dragon != nil,"Такого персонажа не существует")
dragon

//:*Оператор if*
var logicVar = true
if logicVar {
    print("logicVar is true")
}

var logicVar2 = false
if !logicVar2 {
    print("logicVar is false")
}

//if-else
if !logicVar {
    print("logicVar is false")
}
else {
    print("logicVar is true")
}

if logicVar || logicVar2 {
    print("One on the vars is true")
}
else {
    print("Both vars are false")
}

if logicVar && logicVar2 {
    print("Both vars are true")
}
else if logicVar || logicVar2 {
    print("One of the vars is true")
}
else {
    print("Both vars are false")
}

//Задача
var tenantCount = 6
var rentPrice = 0
if tenantCount < 5 {
    rentPrice = 1000
}
else if tenantCount < 7 && tenantCount > 5 {
    rentPrice = 800
}
else {
    rentPrice = 500
}
var allPrice = tenantCount * rentPrice

//: **Тернарный оператор**
let a = 5
let b = 2
a <= b ? print("a is lower or equal than b") : print("b is lower than a")

var height = 180
var isHeader = false
let rawHeight = height + (isHeader ? 10 : 20)

//if - else для опционалов
var fiveMarkCount : Int? = 8
if fiveMarkCount == nil {
    print("Нет отличников")
}
else {
    var cakesForOneStudent = 2
    var cakesForStudents = cakesForOneStudent * fiveMarkCount!
}

var marks = 0
var markCount : Int? = 8
//: **Опциональное связывание**
if var marks = markCount {
    print("В классе \(marks) отличников")
}
else {
    print("В классе нет отличников")
}
marks

//Задача
var coinsInNewChest = "140"
var allCoinsInSum = 1480

if var coins = Int(coinsInNewChest) {
    allCoinsInSum += coins
}
else {
    print("У нового дракона нет золота")
}

//Переход к switch-case
var useMark = 4

if useMark==1 {
    print("Это ужасно-единица на экзамене!")
}else if useMark==2 {
    print("С двойкой ты останешься на второй год")
}
else if useMark == 3 {
    print("Плохо учишься, пора взяться за знания")
}
else if useMark == 4 {
    print("Неплохо, но могло быть и лучше")
}
else if useMark == 5 {
    print("Отлично, так держать")
}

//: **Switch-case**
switch useMark {
    case 1:
        print("Это ужасно-единица на экзамене!")
    case 2:
        print("С двойкой ты останешься на второй год")
    case 3:
         print("Плохо учишься, пора взяться за знания")
    case 4:
         print("Неплохо, но могло быть и лучше")
    case 5:
         print("Отлично, так держать")
    default:
        break
}

switch useMark {
    case 1..<3:
        print("Экзамен не сдан!")
    case 3...5:
        print("Экзамен сдан!")
    default:
        assert(false,"Оценка \(useMark) вне доступного диапазона!")
}

//: *fallthrough*
var level : Character = "Б"
switch level {
case "А":
    print("Выключить все электрические приборы")
    fallthrough
case "Б":
    print("Закрыть двери и окна")
    fallthrough
case "В":
    print("Соблюдать спокойствие")
default :
    break
}

//:**Where**
var dragonWeight : Float = 2.4
var dragonColor = "зеленый"

switch dragonColor {
case "красный" where dragonWeight < 2:
    print("Дракон в первый загон")
case "зеленый" where dragonWeight < 2:
    print("Дракон во второй загон")
case "зеленый","красный" where dragonWeight >= 2:
    print("Дракон в третий загон")
default:
    break
}

switch useMark {
case _ where useMark >= 1 && useMark < 3:
    print("Экзамен не сдан!")
case _ where useMark >= 3 && useMark <= 5:
    print("Экзамен сдан!")
default:
    assert(false,"Оценка \(useMark) вне диапазона")
}

//:**Кортежи в switch-case**

var dragonCharacteristic = ("зеленый",2.4)
switch dragonCharacteristic {
case ("зеленый",1..<2):
    print("Дракона в первый загон")
case("красный",1..<2):
    print("Дракона во второй загон")
case ("красный",_),("зеленый",_) where dragonCharacteristic.1 >= 2:
    print("Дракона в третий загон")
default:
    print("Дракон с неизвестными параметрами")
}
//Связывание значений
switch dragonCharacteristic {
case ("зеленый",1..<2):
    print("Дракона в первый загон")
case("красный",1..<2):
    print("Дракона во второй загон")
case("красный",let weight) where weight >= 2:
    print("дракон в третий загон")
case("зеленый",let weight) where weight >= 2:
    print("дракон в третий загон")
default:
    print("дракон с неизвестными характеристиками")
}

//Если проверяемых значений много
switch dragonCharacteristic {
case ("зеленый",1..<2):
    print("Дракона в первый загон")
case("красный",1..<2):
    print("Дракона во второй загон")
case let(color,weight) where (color == "зеленый" || color == "красный") && weight >= 2:
    print("дракон в третий загон")
default:
    print("Дракон с неизвестными параметрами")
}
