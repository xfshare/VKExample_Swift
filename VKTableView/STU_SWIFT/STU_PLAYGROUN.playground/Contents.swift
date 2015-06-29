//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//区间运算符
for index in 1...5{
    println("\(index) * 5 = \(index * 5)")

}

//半开区间
let names = ["a","b","c","d"]
let counts = names.count
for  i in 0..<counts{
    println("第\(i + 1)个人叫\(names[i])")
}

//逻辑非
let allowedEntry = false
if !allowedEntry{
    println("ACCESS DENIED")
}

//字符串
let someString = "Sonme string literal value"

let blackHeart = "\u{1F639}"

//初始化空字符串
var emptystring = ""
var anotherEmptyString = String()

if emptystring.isEmpty{
    println("真的是空的")
}

// var 可变 let 常量
var variableString = "Horse"
variableString += "and carriage"

let constantString = "Highlander"
//constantString += "and another Highlander"

//String 类型表示特定序列的 Character(字符)类型值的集合
for character in "Dog!?"{
    println(character)
}

let yenSign:Character = "$"

//计算字符数量
let unusualMenagerie = "Koala?,Snail?,penguin?,Dromedary?"
println("\(count(unusualMenagerie))")

//连接字符串和字符

let string1 = "hello"
let string2 = "world"
var welcome = string1 + string2;

let exclamationMark:Character = "!"
welcome.append(exclamationMark)

//字符串插值
let multiplier = 3
let message = "\(multiplier)乘以2.5是\(Double(multiplier) * 2.5)"

//比较字符串
//字符串相等
let quotation = "我们是一样一样滴."let sameQuotation = "我们是一样一样滴."
if quotation == sameQuotation {
    println("字符串相同")
}

//前后缀相等

let romeoAndJuliet = [    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",    "Act 1 Scene 3: A room in Capulet's mansion",    "Act 1 Scene 4: A street outside Capulet's mansion", "Act 1 Scene 5: The Great Hall in Capulet's mansion", "Act 2 Scene 1: Outside Capulet's mansion",    "Act 2 Scene 2: Capulet's orchard",    "Act 2 Scene 3: Outside Friar Lawrence's cell",    "Act 2 Scene 4: A street in Verona",    "Act 2 Scene 5: Capulet's mansion",    "Act 2 Scene 6: Friar Lawrence's cell"]

var act1SceneCount = 0
for scene in romeoAndJuliet {
        if scene .hasPrefix("Act 1"){
            ++act1SceneCount
        }
}
println("\(act1SceneCount)")

//大写/小写字符串
let normal = "Could you help me. please?"
let shouty = normal.uppercaseString
let whispered = normal.lowercaseString


//字符串 Unicode 表示
let dogString = "Dog!?"
for codeUnit in dogString.utf8 {
    println("\(codeUnit)")
}

for codeUnit in dogString.utf16 {
    println("\(codeUnit)")
}

//数组
var mutArr:[String] = ["one","two","three"]
mutArr.append("four")
mutArr += ["five","six"]

mutArr[1...3] = ["2","3","4"]

mutArr.removeLast()
mutArr.insert("6", atIndex: mutArr.count)
mutArr.removeAtIndex(mutArr.count - 1)

for (index2,value1) in enumerate(mutArr){
    println("item \(index2 + 1):\(value1)")
    
    println(value1)
}


let anotherPoint = (2, 0)
switch anotherPoint {
    case (let x, 0):        println("on the x-axis with an x value of \(x)")
    case (0, let y):        println("on the y-axis with a y value of \(y)")
    case let (x, y):        println("somewhere else at (\(x), \(y))")
}


//函数
func sayHello(personName: String) -> String {
    return  "Hello, " + personName + "!"}

println(sayHello("Anna"))

func sayHelloWorld() -> String {
        return "hello, world"}
println(sayHelloWorld())

func sayGoodbye(personName: String) {
    println("Goodbye, \(personName)!")}sayGoodbye("Dave")








