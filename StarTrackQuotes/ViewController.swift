//
//  ViewController.swift
//  StarTrackQuotes
//
//  Created by Shani on 3/23/15.
//  Copyright (c) 2015 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // iboutlet lets xcode know that it is an outlet and are weak by default, UILabel class
    
    @IBOutlet weak var funQuoteLabel: UILabel!
    @IBOutlet weak var crewSayLabel: UILabel!
    @IBOutlet weak var quoteButton: UIButton!
    
    
    let quoteBook = QuoteBook()
    let colorWheel = ColorWheel()
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            funQuoteLabel.text = quoteBook.QuoteDict[quoteBook.RandomKey()]
            crewSayLabel.text = quoteBook.crewSay(quoteBook.RandomKey())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Interface biulder Action (IBAction)
    @IBAction func showFunQuotes() {
        var randomColor = colorWheel.randomColor()
        var randomKey = quoteBook.RandomKey()
        view.backgroundColor = randomColor
        var quote = quoteBook.QuoteDict[randomKey]
        quoteButton.tintColor = randomColor
        crewSayLabel.text = quoteBook.crewSay(randomKey)
        funQuoteLabel.text = quote
    }
}

