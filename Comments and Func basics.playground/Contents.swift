import UIKit

//ФУНКЦИИ

print ("Hello,World")

var name = "Fuad"
print (name)

var pl = "Swift"
print("Я изучаю \(pl)")

//Комментарии
/*А это
 многострочный комментарий*/

//Markdown - комментарии

//: это - markdown комментарий

//: А это-  *курсивный текст*

//:А это -  **жирный текст**

/**
 This func says weather
 - parameter date: String
 - returns: nothing
 - Throws: Error when date is not string
 - Authors: Fuad Rustamov
 - Bug: It does not work without WI-FI
 */

func weatherTeller(date: String) {
    print("\(date)'s weather is : bla bla bla")
}
weatherTeller(date: "24-th of November")

//Точка с запятой
var name1 = "Fuad"; print (name1)
