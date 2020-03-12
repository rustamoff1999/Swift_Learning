import UIKit

var myProgramStatus = (200, "In work", true) //: ** Задали неявно**
myProgramStatus

var myProgramStatus1 : (Int,String,Bool) = (500, "Does not work", false) //:**Задали явно**
myProgramStatus1

//:*Кортежи + Псевдонимы*
typealias numType = Int

var numbersTuples : (Int,Int,numType,numType) = (1,4,16,30)
numbersTuples

///////////////////////
var myProgramStatus2 = (100, "In work", true)
var (numStatus,workStatus,boolStatus) = myProgramStatus2
print("Code of num: \(numStatus)")
print("Code of work: \(workStatus)")
print("Code of bool: \(boolStatus)")

var (age,height,name) = (20,190,"Fuad")
print("\n")
print("My name is \(name), my heigh is \(height), I'm \(age) years old")

var myProgramStatus3 = (27,"In work", true)
var (_,status,_) = myProgramStatus3
print("\n",status)

//:**Индексы доступа к элементам**
print("num status is : \(myProgramStatus3.0)")
print("work status is : \(myProgramStatus1.1)")
print("bool Status is : \(myProgramStatus.2)")

//:*Имена для доступа к элементам*
var myProgramStatus4 = (numstatus : 200, workstatus: "In work", boolstatus: true)
print("numstatus : \(myProgramStatus4.numstatus), workstatus: \(myProgramStatus4.workstatus), boolstatus: \(myProgramStatus4.2)")

var anotherProgramStatus : (numStatus: Int, workstatus: String, boolStatus: Bool) = (150,"Error",false)
anotherProgramStatus.numStatus
anotherProgramStatus.1

//: **Изменение значений кортежей**
anotherProgramStatus.workstatus = "NOT Error"
anotherProgramStatus.workstatus
anotherProgramStatus.numStatus = 500
anotherProgramStatus.numStatus


var me : (name: String, years: Int, height: Double)
var you = ("Fuad",20,1.9)
me = you

//: **Сравнение кортежей**
(1,"alfa")<(2,"betta") // сравнение вторых элементов не проводится
(1,"alfa")<(1,"gamma")
(1,"alfa")>(1,"gamma")
(1,"Fuad")==(1,"Fuad")

