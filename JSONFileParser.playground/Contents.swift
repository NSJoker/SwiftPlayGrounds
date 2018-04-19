//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func readJSONObject(dict:[String:Any]) {
    print(dict)
}

let url = Bundle.main.url(forResource: "SearchDataSource", withExtension: "json")
do {
    let data = try? Data.init(contentsOf: url!)
    
    let obj = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
    
    if let dict = obj as? [String: Any] {
        readJSONObject(dict: dict)
    }
}
catch {
    print("error")
}
