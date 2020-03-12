import UIKit
import Foundation

func printMessage() -> Void {
    print("Message accepted")
}
printMessage()

func printCodeMessage(requestCode: Int) -> Void {
    print("Код ответа - \(requestCode)")
}
printCodeMessage(requestCode: 200)
printCodeMessage(requestCode: 380)

func sumOfabc(a: Int, b: Int, c: Int) {
    print("The sum of \(a), \(b) and \(c) - \(a+b+c)")
}
sumOfabc(a: 20, b: 15, c: 3)

func sumOfabc2(a: Int,_ b: Int, c: Int) {
    print("The sum of \(a), \(b) and \(c) - \(a+b+c)")
}
sumOfabc2(a:8, 2,c: 4)

//: *Переменные копии параметров*
func generateString(code: Int, _ text: String) -> String {
    var mutableText = text
    mutableText += String(code)
    return mutableText
}
generateString(code: 200, "Код:")

//:**СКВОЗНЫЕ ПАРАМЕТРЫ**
func changeValues(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a
b

func generateString(code: Int, message: String) -> String {
    let returnMessage = "Получено сообщение \(message) с кодом \(code)"
    return returnMessage
}

print(generateString(code: 200, message: "Сервер доступен"))

//:**ВАРИАТИВНЫЙ ПАРАМЕТР**

func printRequestString(codes:Int...) -> () {
    var allCodes = ""
    for oneRequest in codes {
        allCodes += String(oneRequest) + " "
    }
    print("Codes: \(allCodes)")
}

printRequestString(codes: 200,300,150,204)
printRequestString(codes: 80,65)

//: *Кортеж в качестве возвращаемого значения*

func codeDescription(code: Int) -> (code: Int,description: String) {
    let description : String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
let request = codeDescription(code: 150)
request.code
request.description

//:*Задача*
func walletSum(wallet: [Int]) -> Int {
    var sum = 0
    for oneBanknote in wallet {
        sum += oneBanknote
    }
    return sum
}
var Wallet : [Int] = [50,100,100,500,50,1000,5000,50,100]

walletSum(wallet: Wallet)

Wallet.append(1000)
walletSum(wallet: Wallet)

//: **Значения аргументов по УМОЛЧАНИЮ**

func walletSum2(wallet:[Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}

walletSum2(wallet: Wallet)
walletSum2()

//:*Внешние имена аргументов*

func walletSum3(banknotsArray wallet:[Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}

walletSum3(banknotsArray: Wallet)

//:**ФУНКЦИЯ В КАЧЕСТВЕ АРГУМЕНТА**
//Функция генерации слчайного массива банкнот
func generateWallet(walletLength: Int) -> ([Int]) {
    let typesOfBanknote = [50,100,500,1000,5000]
    var wallet: [Int] = []
    //цикл генерации массива банкнот
    for _ in 1...walletLength {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBanknote.count-1)))
        wallet.append(typesOfBanknote[randomIndex])
    }
    return wallet
}

//Функция подсчета денег в кошельке
func sumWallet(bankNotsFunction wallet: (Int)->([Int])) -> Int? {
    var sum: Int = 0
    let myWalletArray = wallet(Int(arc4random_uniform(10)))
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}
sumWallet(bankNotsFunction: generateWallet)

//:**Функция в качестве возвращаемого значения**
func printText() -> String {
    return "Очент хорошая книга"
}

func printTextFunction() -> () -> String {
    return printText
}

let newFunctionInLet = printTextFunction()
newFunctionInLet()

// ///////////////////////////////////////
//: **Вложенные функции**

func oneStep(coordinates: inout (Int, Int), stepType: String) ->() {
    func up(coords: (Int, Int)) -> (Int,Int) {
        return (coords.0, (coords.1)+1)
    }
    func down(coords: (Int, Int)) -> (Int,Int) {
        return (coords.0, (coords.1)-1)
    }
    func right(coords: (Int, Int)) -> (Int,Int) {
        return ((coords.0)+1, coords.1)
    }
    func left(coords: (Int, Int)) -> (Int,Int) {
        return ((coords.0)-1, coords.1)
    }
    
    switch stepType {
        case "up":
           coordinates =  up(coords: coordinates)
        case "down":
           coordinates =  down(coords: coordinates)
        case "right":
           coordinates = right(coords: coordinates)
        case "left":
           coordinates = left(coords: coordinates)
        default:
            break
    }
}
var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")

// ////////////////////////////////

//: **Перегрузка функций**
func cry() -> String {
    return "One"
}
func cry() -> Int {
    return 1
}
//let resultFunc = cry() ОШИБКА

let resultString : String = cry()
let resultInt = cry() + 100

// //////////////////////////////////

//:**Рекурсивный вызов функций**
func countDown(firstNumber num: Int) ->() {
    print(num)
    if num>0 {
        countDown(firstNumber : num-1)
    }
}
countDown(firstNumber: 3)
// ////////////////////////////
//:*Безымянные функции*
let functionInLet = {return true}

let anotherFuncInLet = functionInLet        //Функция - это тип-ссылка

