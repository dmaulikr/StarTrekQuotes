//
//  QuoteBook.swift
//  StarTrackQuotes
//
//  Created by Shani on 3/24/15.
//  Copyright (c) 2015 Shani Rivers. All rights reserved.
//

import Foundation

struct QuoteBook {
    // stored property is a dictionary
    
    let QuoteDict = [
        // Vulcan
         0: "The needs of the many outweigh the needs of the few."
        ,1:"Yours — is the superior intellect."
        ,2:"Fascinating."
        ,3:"I have been, and always shall be, your friend."
        ,4:"Live long and prosper."
        ,5:"It was, however I recently realised there are times when it is desirable to bend the rules."
        ,6:"Interesting."
        ,7:"f I were human, I believe the correct response would be 'Go to Hell!'."
        ,8:"Logic is the beginning of wisdom; not the end."
        ,9:"With the first link, the chain is forged. The first speech censored, the first thought forbidden, the first freedom denied, chains us all irrevocably."
        ,10:"But good words; that’s where ideas begin. … Maybe you should listen to them."
        ,11:"Simple… logic."
        
        // Captain
        ,12:"Khaaaaaaaaaaan!"
        ,13:"I hope you have better luck with yours than I had with mine."
        ,14:"Time is the fire in which we burn..."
        ,15:"If there's nothing wrong with me... maybe there's something wrong with the universe!"
        ,16:"I do not believe you realize the gravity of your situation."
        ,17:"I changed the conditions of the test. I don’t like to lose."
        ,18:"I like to believe that there are always possibilities."
        ,19:"Please let me know if there’s some other way we can screw up tonight."
        
        // Doctor
        
        ,20:"Space is disease and danger wrapped in darkness and silence."
        ,21:"I'm a doctor, not a bricklayer."
        ,22:"Avoid the planet Earth at all costs. Farewell."
        ,23:"Seize the time. Live now; make now always the most precious time. Now will never come again."
        ,24:"If you can't take a little bloody nose, maybe you oughtta go back home and crawl under your bed. It's not safe out here. It's wondrous, with treasures to satiate desires both subtle and gross; but it's not for the timid."
        
        //Engineer
        ,25:"If there's nothing wrong with me... maybe there's something wrong with the universe!"
        ,26:"If you can't take a little bloody nose, maybe you oughtta go back home and crawl under your bed. It's not safe out here. It's wondrous, with treasures to satiate desires both subtle and gross; but it's not for the timid."
        ,27:"Baby needs a new pair of shoes."
        ,28:"There are four lights!"
        ,29:"For everything, there is a first time."
        ,30:"Normal is what everyone else is and you are not."
        ,31:"Damn medievalism!"
        ,32:"Where's that damn torpedo?"
        
        //Crewman
        ,33:"Now's as good a time as any to tell you. Your ceiling is hideous."
        ,34:"Yes, absolutely, I do indeed concur, wholeheartedly!"
    
        // An alien being
    
        ,35:"It has always been easier to destroy than to create."
        ,36:"I do not believe you realize the gravity of your situation."
        ,37:"Eaten any good books lately?"
        ,38:"You're dead, this is the afterlife -- and I'm God."
        ,39:"This isn’t reality. This — is fantasy."
        
    ]
    
    // Random key generator
    func RandomKey() -> Int {
        var unsignedKey = UInt32(QuoteDict.count)
        var randomKeyGen = arc4random_uniform(unsignedKey)
        var randomKey = Int(randomKeyGen)
        
        return randomKey
    }


    // Function to determine a random quote is from a particular crewman by key
    func crewSay(randomKey :Int) -> String {
    
        switch randomKey {
        case 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11:
            var text = "A vulcan would say..."
            return text
        case 12, 13, 14, 15, 16, 17, 18, 19:
            var text = "A captain would say..."
            return text
        case 20, 21, 22, 23, 24:
            var text = "A doctor would say..."
            return text
        case 25, 26, 27, 28, 29, 30, 31, 32:
            var text = "A engineer would say..."
            return text
        case 35, 36, 37, 38, 39:
            var text = "A random alien would say..."
            return text
        default:
            var text = "A crewman would say..."
            return text
        }
    }
}




    
    
    















