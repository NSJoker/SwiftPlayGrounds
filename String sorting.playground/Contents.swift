//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = ["ANIMATION", "ARCHITECTURE", "ART", "CRAFTS", "DANCING", "DESIGN", "DRAWING", "HOME IMPROVEMENT", "INFOGRAPHICS", "INTERIOR DESIGN", "PAINTING", "BLUE CROSS","ACTION AND ADVENTURE","COOKBOOKS","CERAMICS CRAFTS","SCIENCE","GARDENING","SAFARI","JOURNALS", "BIOGRAPHIES"].sorted()

for item in array {
    print(item)
}


let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy"

let date = Date().addingTimeInterval((60*60*24*365*21) * (-1))

print("date = ",dateFormatter.string(from: date))
