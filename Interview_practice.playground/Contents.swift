import UIKit

//:**defer**

func deferTest() -> String {
    var currentString = ""
    currentString += "A"
    defer {
        currentString += "B"
    }
    
    if true {
        defer {
            currentString += "C"
        }
        defer{
            currentString += "D"
        }
        currentString += "E"
    }
    
    currentString += "F"
    defer {
        currentString += "G"
    }
    return currentString
}
print(deferTest())
// ////////////////////////////

//:**nil in Dictionary**
func nilDictionaryTest() {
    var numDictionary : [String : Int?] = [
        "One" : 1,
        "Two" : 2,
        "Nil" : nil
        
    ]
    print(numDictionary.count)
    numDictionary["One"] = nil
    numDictionary["Nil"] = nil
    print(numDictionary.count)
    numDictionary["One"] = .some(nil)
    print(numDictionary.count)
}
nilDictionaryTest()
//:**Closure variables**

func closureTest() {
    var language = "Obj-C"
    let code = {[language] in
        print(language)
    }
    code()
    language = "Swift"
    code()
}
closureTest()
