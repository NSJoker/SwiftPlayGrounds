//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 for result in (response as! GVSuggestedPeopleModel).results {
 
 let predicateEventDate = NSPredicate.init(format:"userId == %d",result.userId!)
 let predicateResult = self.allSuggestedPeople.filter {predicateEventDate.evaluate(with: $0)}
 if  predicateResult.count == 0 {
 self.allSuggestedPeople.append(result)
 }
 }
 */

class Person:NSObject {
    var uniqueID:Int?
    var name:String?
}


var allPersonsArray = [Person]()

let person1 = Person()
person1.uniqueID = 1
person1.name = "qwertyuiop"

allPersonsArray.append(person1)

let person2 = Person()
person2.uniqueID = 2
person2.name = "asdfghjkl"

allPersonsArray.append(person2)

for _ in 0..<10 {
    let person = Person()
    person.uniqueID = 3
    person.name = "zxcvbnm"
    allPersonsArray.append(person)
}

print("allPersonsArray.count = ",allPersonsArray.count)

for person in allPersonsArray {
    print("UniqueID = \(person.uniqueID ?? 0) &&& name = \(person.name ?? "")")
}

var filteredArray = [Person]()
for person in allPersonsArray {
    
    let predicateResult = filteredArray.filter {$0.uniqueID == person.uniqueID}
    if  predicateResult.count == 0 {
        filteredArray.append(person)
    }
}

print("\n\n\n\n\n\nlalalalalalalalalalalalalalalalalalalalalalalalalalaalal\n\n\n\n\n")

print("allPersonsArray.count = ",filteredArray.count)
for person in filteredArray {
    print("UniqueID = \(person.uniqueID ?? 0) &&& name = \(person.name ?? "")")
}
