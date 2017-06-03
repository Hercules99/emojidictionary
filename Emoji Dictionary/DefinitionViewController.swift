//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Fredrik on 03.06.2017.
//  Copyright © 2017 Hercules. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "Smiley face!"
        }
        
        if emoji == "😡" {
            definitionLabel.text = "Angry smiley face."
        }
        
        if emoji == "😍" {
            definitionLabel.text = "Hearted eyes smiley <3"
        }

        if emoji == "🏍" {
            definitionLabel.text = "Motorcycle!"
        }

        if emoji == "🇳🇴" {
            definitionLabel.text = "Norwegian flag!"
        }

        if emoji == "🐶" {
            definitionLabel.text = "A cute dog!"
        }

        if emoji == "💩" {
            definitionLabel.text = "Poop!"
        }

        if emoji == "😎" {
            definitionLabel.text = "Dude with sunglasses!"
        }

        if emoji == "👻" {
            definitionLabel.text = "Ohh no a Ghost!"
        }

        if emoji == "😴" {
            definitionLabel.text = "Sleeping face!"
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
