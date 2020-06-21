import UIKit
//:*ФУНКЦИИ КАК ЗАМЫКАНИЯ*
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

var Wallet : [Int] = Array(arrayLiteral: 10,50,100,100,5000,100,50,500,100)
handle100(wallet: Wallet)


func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote >= 100 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

var Wallet2 : [Int] = Array(arrayLiteral: 10,50,100,100,5000,100,50,500,100)
handle100(wallet: Wallet)

//: **Объединяем код**

func handle(wallet: [Int], closure: (Int)->Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

func compare100(banknoteType: Int) -> Bool {
    return banknoteType == 100
}

func compareMore1000(banknoteType: Int) -> Bool {
    return banknoteType >= 1000
}

handle(wallet:Wallet2, closure: compare100)
handle(wallet:Wallet2, closure: compareMore1000)

//:**ЗАМЫКАЮЩИЕ ВЫРАЖЕНИЯ**

handle(wallet: Wallet2,closure: {(banknoteType: Int) -> Bool in
    return banknoteType == 100
})

handle(wallet: Wallet2,closure: {(banknoteType: Int) -> Bool in
    return banknoteType >= 1000
})

//:**Оптимизация замыкающих выражений**

handle(wallet:Wallet2,closure: {banknote in
    return banknote == 100
})

handle(wallet:Wallet2,closure: {banknote in
    return banknote >= 1000
})

//: *Итоговая оптимизация(Неявное возвращение значения)*
handle(wallet:Wallet,closure: {banknote in banknote == 100})

handle(wallet:Wallet,closure: {banknote in banknote >= 1000})

//:**СОКРАЩЕННЫЕ ИМЕНА ПАРАМЕТРОВ**
handle(wallet:Wallet, closure: {$0 >= 1000})

handle(wallet:Wallet, closure: {$0 == 100})

//Можно выносить за скобки)
handle(wallet:Wallet)
{$0 == 100}

//:*Более трудный пример*
let successBanknots = [100,500]
handle(wallet: Wallet)
{
    banknote in
    for number in successBanknots {
        if banknote == number {
            return true
        }
    }
    return false
}

//:*Переменные - замыкания*
let closure : () -> () =  {
    print("Замыкающее выражение")
}
closure()

var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    return $0 + $1
}
sum(10,35)

//:*Метод сортировки массива*
var myArray : Array<Int> = [1,44,81,4,277,50,101,51,8]

myArray.sorted(by: {(One: Int, Two: Int) -> Bool in
    return One < Two
})

//Оптимизация
var sortedArray = myArray.sorted(by:{$0 < $1})

//Потрясающая возможность Swift
myArray.sorted(by: < )

myArray.sorted(by: > )

// ////////////////////////////////////
//: *Захват переменных*
var a=1
var b=3
let closureSum : () -> Int = {
    return a+b
}
closureSum()
a=4
b=5
closureSum()

//Замыкаем
let closureSum2 : ()->Int = {
    [a,b] in
    return a+b
}
closureSum2()
a=10
b=20
closureSum2()

//:*Захват вложенной функции*
func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}
var incrementByTen = makeIncrement(forIncrement : 10)
var incrementBySeven = makeIncrement(forIncrement : 7)
incrementByTen()
incrementByTen()

incrementBySeven()
incrementBySeven()
//  /////////////////////////////////////////////////////
var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive

incrementByFive()
copyIncrementByFive()
incrementByFive()
copyIncrementByFive()                           //:**Замыкания - это тип-ссылка**

//:**Автозамыкания**
var arrayOfNames = ["Helga","Bazil","Alex"]
func printName(nextName: @autoclosure ()->String) {
    print(nextName())
}
printName(nextName: arrayOfNames.remove(at:0))

//:*Выходящие замыкания*
var arrayOfClosures : [()->Int] = []

func addNewClosure(_ newClosure: @escaping () -> Int) {
    arrayOfClosures.append(newClosure)
}

addNewClosure({return 100})
addNewClosure{return 50}
arrayOfClosures[0]()
arrayOfClosures[1]()

// Another example with autoClosure
var arrayOfNumbers : Array<Int> = [1,2,3,4,5,6,7,8,9]

func anotherAutoClosure(array: @autoclosure ()->[Int])->() {
    print("\n",array())
}

anotherAutoClosure(array: arrayOfNumbers.suffix(3))

//:*Reorganization of function*

func sum(x: Int,y: Int)->Int {
    return x+y
}

func sum2(_ x: Int) -> (Int) -> Int {
    return {return $0 + x}
}
var anotherClosure = sum2(1)
anotherClosure(12)

sum2(5)(12)

var sumClosure = sum2(2)
sumClosure(20)
sumClosure(40)
