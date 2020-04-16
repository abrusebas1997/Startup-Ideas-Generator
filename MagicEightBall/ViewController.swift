//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Sebastian Abarca on 4/15/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]

    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel.text = answers[randomIndex]
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func shakeButtonTapped(_ sender: Any) {
//        print("Shake it like a polaroid picture!")
//        answerLabel.text = "button was tapped"
        
        generateAnswer()

        
        // 1
//        let randomIndex = Int.random(in: 0..<answers.count)
        
        // 2
//        answerLabel.text = answers[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    
    
    
    
}
