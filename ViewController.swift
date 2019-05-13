//
//  ViewController.swift
//  Emojional
//
//  Created by Colby Dickinson on 5/12/19.
//  Copyright © 2019 Colby Dickinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🤗": "pure contentment", "😱": "shocked", "😡": "angry at the world", "😢": "sad"]
    let customMessages = ["pure contentment": ["Keep doing you!", "Oh, happy day!", "You're rockin' today!"], "shocked": ["SHOCKER!", "OMG", "What just happened!?"], "angry at the world": ["Take some deep breathes.", "Going for a run might help.", "Think about something you love."], "sad":["Cheer up, buttercup!", "Turn that frown upside down.", "Things will get better."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let randomNumber = Int.random(in: 0...3)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        let alertController = UIAlertController(title: "Emojional App", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

