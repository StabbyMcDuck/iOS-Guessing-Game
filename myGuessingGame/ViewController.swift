//
//  ViewController.swift
//  myGuessingGame
//
//  Created by Imhoff, Regina L. on 9/14/18.
//  Copyright © 2018 Regina Imhoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessField: UITextField!
    
    @IBOutlet var guessLabel: UILabel!
    
    @IBOutlet var gamesLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    var itemArray = ["Car", "House", "Boat", "Tree"]
    
    var gamesPlayed = 0;
    
    var correctAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newGameBtn(_ sender: Any) {
        let randomNumber = Int(arc4random()) % itemArray.count
        let i = randomNumber
        
        correctAnswer = itemArray[i]
        
        print("*************", correctAnswer)
        
        gamesPlayed = gamesPlayed + 1
        
        gamesLabel.text = "Games Played: \(gamesPlayed)"
        
        
        
    }
    
    @IBAction func checkAnswerBtn(_ sender: Any) {
    
    
    
    }
    
}

