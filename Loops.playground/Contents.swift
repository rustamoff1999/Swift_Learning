import UIKit
import Foundation  //:**Для использования функции arc4random_uniform()**

//: **ЦИКЛ FOR-IN**

var totalSum = 0

for i in 1...10 {       //:*Переменная i - локальная*
    totalSum += i
}
totalSum

//:*Метод .reversed()*

for i in (1...10).reversed() {
    print(i)
}
print()
//: *Функции stride(from: , through: , by: ) ; stride(from: , to: , by: )*
for i in stride(from: 1, through: 5, by: 2) {
    print(i)
}
print()
for i in stride(from: 1, to: 5, by: 2) {
    print(i)
}
print()
//:*Передаем коллекцию в цикл for-in*
let musicStyles : Set<String> = ["Jazz","Rock","Boogie Woogie"]

for myMusic in musicStyles {
    print("I love \(myMusic)")
}
print()
//:*Передаем словарь в цикл for-in*

var countryAndCapital : Dictionary<String,String> = ["Russia":"Moscow","Azerbaijan":"Baku","USA":"Washinghton"]

for (country,capital) in countryAndCapital {
    print("Столицей \(country) является \(capital)")
}
print()

for (country,_) in countryAndCapital {
    print("Страна - \(country)")
}
print()

for (_,capital) in countryAndCapital {
    print("Столица - \(capital)")
}
print()

//: *Метод .enumerated()*
let myMusicStyle : [String] = Array(arrayLiteral: "Jazz", "Pop", "Hip Hop")

for (index,style) in myMusicStyle.enumerated() {
    print("\(index+1) : I love \(style)")
}
print()

//: *Вывод на экран все символы слова*
let name = "Troll"

for oneChar in name {
    print(oneChar)
}
print()

//:**Вложенные циклы**

var teamMatches : Dictionary<String,Array<String>> = ["Barcelona": ["3:0", "2:1"], "Bayern" : ["5:1", "1:1"], "Chelsea": ["3:3","7:0"]]

for (opponent, results) in teamMatches {
    for oneResult in results {
        print("Against \(opponent) : \(oneResult)")
    }
    print()
}
// //////////////////////////////////////////////////////
//: **ЦИКЛ WHILE**
var i = 1
var totalsumm = 0

while i <= 10 {
    totalsumm += i
    i += 1
}
totalsumm

// //////////////////////////////////////////////////////
//: **ЦИКЛ REPEAT-WHILE**

var k = 1
totalSum = 0

repeat {
    totalSum += k
    k += 1
} while k <= 10
totalSum

// /////////////////////////////////////////////////////

//: **Опереторы continue и break**

//:*Оператор continue*
for i in 1...10 {
    if i%2 == 0 {
        continue
    }
    else {
        print(i)
    }
}
print()
//:*Оператор break*
for i in 1...10 {
    var randNum = Int(arc4random_uniform(10))       //Принимает параметр типа UInt32 и возвращает значение такого же типа
    if randNum % 2 == 0 {
        print("Итерация \(i)")
        break
    }
}
print()

//:*Метки*
mainLoop: for i in 1..<5 {
    for y in 2...5 {
        if i == 2 && y == 4 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}
