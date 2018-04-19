//: Playground - noun: a place where people can play

import UIKit

let YES = true
let NO = false

var workGoal = "Work goal = Unpacking of nested arrays to a single array"

func flattenIntArray(array:[Any])->[Int] {
    
    var finalArray = [Int]()
    
    for element in array {
        if element is Int {
            finalArray.append(element as! Int)
        }
        else if element is [Any] {
            let recurssedResultArray = flattenIntArray(array: element as! [Any])
            
            for item in recurssedResultArray {
                finalArray.append(item)
            }
        }
        
    }
    
    return finalArray
}


//Input 1 = [1,2,3]              Output = [1,2,3]
//Input 2 = [1,[2,3]]            Output = [1,2,3]
//Input 3 = [1,[2,[3,4]]]        Output = [1,2,3,4]
//Input 4 = [1,[2,[3],4],5]      Output = [1,2,3,4,5]

let inputIntArray = [1,[2,[3],4],5] as [Any]

let flattenedIntArray = flattenIntArray(array: inputIntArray)

print("Result ints= ",flattenedIntArray)

func flattenAnyArray(array:[Any])->[Any] {
    
    var finalArray = [Any]()
    
    for element in array {
        if element is [Any] {
            let reccursedResultArray = flattenAnyArray(array: element as! [Any])
            
            for item in reccursedResultArray {
                finalArray.append(item)
            }
        }
        else {
            finalArray.append(element)
        }
    }
    return finalArray
}

//Input 1 = [1,"A",3]                Output = [1,A,3]
//Input 2 = [1,["A",3]]              Output = [1,A,3]
//Input 3 = [1,["A",[3,"B"]]]        Output = [1,A,3,B]
//Input 4 = [1,["A",[3],"B"],5]      Output = [1,A,3,B,5]

let inputAnyArray = [1,["A",[NO],YES],5] as [Any]
let flattenedAnyArray = flattenAnyArray(array: inputAnyArray)

print("Result Any= ",flattenedAnyArray)
