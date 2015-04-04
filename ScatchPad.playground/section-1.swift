// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//

var shoppingList = ["toothpaste", "bread", "eggs"]

var cart = shoppingList[1]

cart.isEmpty

shoppingList.count


let quoteArray = [
    "The needs of the many outweigh the needs of the few."
    ,"Khaaaaaaaaaaan!"
    ,"Space is disease and danger wrapped in darkness and silence."
    ,"I'm a doctor, not a bricklayer."
    ,"Fascinating."
    ,"I have been, and always shall be, your friend."
    ,"Live long and prosper."
    ,"It was, however I recently realised there are times when it is desirable to bend the rules"
    ,"Now's as good a time as any to tell you. Your ceiling is hideous"
    ,"Interesting."
    ,"I hope you have better luck with yours than I had with mine"
    ,"Time is the fire in which we burn..."
    ,"Normal is what everyone else is and you are not."
    ,"It has always been easier to destroy than to create"
    ,"Avoid the planet Earth at all costs. Farewell"
    , "Damn medievalism!"
    ,"I do not believe you realize the gravity of your situation"
    ,"Where's that damn torpedo?"
    ,"If I were human, I believe the correct response would be 'Go to Hell'"
    ,"Logic is the beginning of wisdom; not the end."
    ,"Seize the time. Live now; make now always the most precious time. Now will never come again"
    ,"Eaten any good books lately?"
    ,"With the first link, the chain is forged. The first speech censored, the first thought forbidden, the first freedom denied, chains us all irrevocably."
    ,"If there's nothing wrong with me... maybe there's something wrong with the universe!"
    ,"If you can't take a little bloody nose, maybe you oughtta go back home and crawl under your bed. It's not safe out here. It's wondrous, with treasures to satiate desires both subtle and gross; but it's not for the timid."
    ,"You're dead, this is the afterlife -- and I'm God"
    ,"Yes, absolutely, I do indeed concur, wholeheartedly!"
    ,"Baby needs a new pair of shoes"
    ,"There are four lights!"
    ,"For everything, there is a first time."
    ,"I changed the conditions of the test. I don’t like to lose."
    ,"Yours — is the superior intellect."
    ,"But good words; that’s where ideas begin. …Maybe you should listen to them."
    ,"I like to believe that there are always possibilities."
    ,"Simple… logic."
    ,"This isn’t reality. This — is fantasy."
    ,"Please let me know if there’s some other way we can screw up tonight."
    
]


// random number generation

//var random = arc4random_uniform(quoteArray.count)

var unsignedArrayCount = UInt32(quoteArray.count)
var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
var randomNumber = Int(unsignedRandomNumber)





// calling color, need the RGB values but then divid by the max to get the float per documentation
 var redColor = UIColor(red: 233/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)




//"The needs of the many outweigh the needs of the few."
//,"Khaaaaaaaaaaan!"
//,"Space is disease and danger wrapped in darkness and silence."
//,"I'm a doctor, not a bricklayer."
//,"Fascinating."
//,"I have been, and always shall be, your friend."
//,"Live long and prosper."
//,"It was, however I recently realised there are times when it is desirable to bend the rules"



// Play around with dictionary's to see if you can use this instead of an array


var crew = [0: "The needs of the many outweigh the needs of the few.", 1: "Fascinating", 2: "It was, however I recently realised there are times when it is desirable to bend the rules",3:"Space is disease and danger wrapped in darkness and silence."
    ,4:"I'm a doctor, not a bricklayer."
    ,5:"Avoid the planet Earth at all costs. Farewell."
]




//var key: Int
//
//var unsignedKey = UInt32(crew.count)
//var randomCrew = arc4random_uniform(unsignedKey)
//var randomKey = Int(randomCrew)

//if randomKey in 0..1 _ = {
//    println("A vulcan would say...")
//    crew[randomKey] }
//else if randomCrew == 2 {
//    println("A captain would say...")
//    crew[randomKey]
//    

// I got it to work! !!!!!!!! using a dictionary with a switch statement
func createRandomKey() -> Int {
    var unsignedKey = UInt32(crew.count)
    var randomKeyGen = arc4random_uniform(unsignedKey)
    var randomKey = Int(randomKeyGen)
    
    return randomKey
}

let key :Int = createRandomKey()


func quoteGen() -> String {
    return crew[key]!
}


quoteGen()


switch key {
case 0, 1:
    println("A vulcan would say...")
case 3,4,5:
    println("A doctor would say...")
default:
    println("A captain would say...")
}
































