//: Playground - noun: a place where people can play

import UIKit

let title = "4 minute talk"
let topic = "REDUCE FUNCTIONS"

//Get the sum of all integers in an array

func summation(numbers:[Int]) -> Int {
    var sum = 0
    
    numbers.forEach { (number) in
        sum += number
    }
    return sum
}

let sum1 = summation(numbers:[1,2,3,4])
print("Sum1 =",sum1)

let sum2 = [1,2,3,4].reduce(0) { (result, number) -> Int in
    return result + number
}

print("Sum2 =",sum2)

let sum3 = [1,2,3,4].reduce(0, { $0 + $1 })
print("Sum3 =",sum3)

let sum4 = [1,2,3,4].reduce(0, +)
print("sum4 =",sum4)


//TODO
//Get the product of all the integers in an array
func multiplication(numbers:[Int])->Int {
    var product = 1
    
    numbers.forEach { (number) in
        product *= number
    }
    
    return product
}

let product1 = multiplication(numbers: [1,2,3,4])
print("Product1 = ",product1)

let product2 = [1,2,3,4].reduce(1) {(result, number) -> Int in
    return result * number
}
print("Product2 = ",product2)

let product3 = [1,2,3,4].reduce(1, { $0 * $1 })
print("Product3 =",product3)

let product4 = [1,2,3,4].reduce(1, *)
print("Product4 =",product4)


//Append all the strings in an array to form a sentence.

func appendStrings(strings:[String])->String {
    var finalString = ""
    
    strings.forEach { (string) in
        finalString = finalString + " " + string
    }
    
    return finalString
}

let stringsArray = ["Lorem ipsum dolor sit amet.", "Nam ligula purus, egestas a.", "Aliquam scelerisque faucibus magna non.", "Proin et sem ultricies, accumsan."]
let appendedString1 = appendStrings(strings: stringsArray)
print("AppendedString1 = ",appendedString1)


let appendedString2 = stringsArray.reduce("") {(result, string) -> String in
    return result + " " + string
}
print("AppendedString2 = ",appendedString2)

let appendedString3 = stringsArray.reduce("", { $0 + " " + $1 })
print("AppendedString3 = ",appendedString3)

let appendedString4 = stringsArray.reduce("", +)//This cannot be used, in this case as the spacing between the objects in the array is not done.
print("AppendedString4 = ",appendedString4)

















