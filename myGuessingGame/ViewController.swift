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
            numberOfGuesses = numberOfGuesses + 1
            guessLabel.text = "Number of Guesses \(numberOfGuesses)"
            
            if guessField.text == correctAnswer {
                let alert = UIAlertController(title: "Congratulations!", message: "Do you want to play again?", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            
                }
                
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
                
                if numberOfGuesses == 1 {
                    score = score + 10
                } else if numberOfGuesses == 2 {
                    score = score + 5
                } else if numberOfGuesses == 3 {
                    score = score + 1
                }
                
                answerLabel.text = ""
                scoreLabel.text = "Score: \(score)"
                
                // clear out answer and number of guesses
                guessLabel.text = "Number of Guesses: "
                correctAnswer = ""
                numberOfGuesses = 0
            
            // wrong answer code
            } else {
                answerLabel.text = "Wrong Answer.  Guess again!"
                answerLabel.textColor = UIColor.red
                
            }
            
            guessField.resignFirstResponder()
            guessField.text = ""
            
        }
        
    
    } // end of check answer function
    
}

