//: Playground - noun: a place where people can play

import UIKit

struct Player {
    let fisrtName: String
    let lastName: String
    let team: String
    let price: Float
    let retained: Bool
}

let crore:Float = 10000000

let players = [
    Player(fisrtName: "MS", lastName: "Dhoni", team: "Chennai Super Kings", price: 15*crore, retained: true),
    Player(fisrtName: "Suresh", lastName: "Raina", team: "Chennai Super Kings", price: 11*crore, retained: true),
    Player(fisrtName: "Ravindra", lastName: "Jadeja", team: "Chennai Super Kings", price: 7*crore, retained: true),
    Player(fisrtName: "Rishabh", lastName: "Pant", team: "Delhi Daredevils ", price: 15*crore, retained: true),
    Player(fisrtName: "Chris", lastName: "Morris", team: "Delhi Daredevils ", price: 11*crore, retained: true),
    Player(fisrtName: "Shreyas", lastName: "Iyer", team: "Delhi Daredevils ", price: 7*crore, retained: true),
    Player(fisrtName: "Rohit", lastName: "Sharma", team: "Mumbai Indians", price: 15*crore, retained: true),
    Player(fisrtName: "Hardik", lastName: "Pandya", team: "Mumbai Indians", price: 11*crore, retained: true),
    Player(fisrtName: "Jasprit", lastName: "Bumrah", team: "Mumbai Indians", price: 7*crore, retained: true),
    Player(fisrtName: "Axar", lastName: "Patel", team: "Kings XI Punjab", price: 12.5*crore, retained: true),
    Player(fisrtName: "KL", lastName: "Rahul", team: "Kings XI Punjab", price: 11*crore, retained: false),
    Player(fisrtName: "Ravichandran", lastName: "Ashwin ", team: "Kings XI Punjab", price: 7.6*crore, retained: false),
    Player(fisrtName: "Sunil", lastName: "Narine", team: "Kolkata Knight Riders", price: 12.5*crore, retained: true),
    Player(fisrtName: "Andre", lastName: "Russell", team: "Kolkata Knight Riders", price: 8.5*crore, retained: true),
    Player(fisrtName: "Chris", lastName: "Lynn", team: "Kolkata Knight Riders", price: 9.6*crore, retained: false),
    Player(fisrtName: "Steve", lastName: "Smith", team: "Rajasthan Royals", price: 12.5*crore, retained: true),
    Player(fisrtName: "Ben", lastName: "Stokes", team: "Rajasthan Royals", price: 12.5*crore, retained: false),
    Player(fisrtName: "Jaydev", lastName: "Unadkat", team: "Rajasthan Royals", price: 11.5*crore, retained: false),
    Player(fisrtName: "Virat", lastName: "Kohli", team: "Royal Challengers Bangalore", price: 17*crore, retained: true),
    Player(fisrtName: "AB de", lastName: "Villiers", team: "Royal Challengers Bangalore", price: 11*crore, retained: true),
    Player(fisrtName: "Sarfraz", lastName: "Khan", team: "Royal Challengers Bangalore", price: 3*crore, retained: true),
    Player(fisrtName: "David", lastName: "Warner", team: "Sunrisers Hyderabad", price: 12.5*crore, retained: true),
    Player(fisrtName: "Bhuvneshwar", lastName: "Kumar", team: "Sunrisers Hyderabad", price: 8.5*crore, retained: true),
    Player(fisrtName: "Manish", lastName: "Pandey", team: "Sunrisers Hyderabad", price: 11*crore, retained: false)
]

let groupedPlayersDictionary = Dictionary(grouping: players) { (player) -> Float in
    return player.price
}

Dictionary(players) { (<#_#>, <#_#>) -> _ in
    <#code#>
}

var groupedPlayers = [[Player]]()

let keys = groupedPlayersDictionary.keys.sorted().reversed()
keys.forEach { (key) in
    groupedPlayers.append(groupedPlayersDictionary[key]!)
}

groupedPlayers.forEach({
    $0.forEach({print($0)})
    print("\n-----------\n")
})
