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
    
    var score = 0
    
    var numberOfGuesses = 0
    
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
        // if a new game hasn't been started
        if correctAnswer == "" {
            let alert = UIAlertController(title: "Please press new game button", message: "so we can play the game", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                
            }
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
          
        // a new game has been started
        } else {
            
            
        }
        
    
    } // end of check answer function
    
}

