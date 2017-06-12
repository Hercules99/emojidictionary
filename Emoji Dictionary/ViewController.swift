//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Fredrik on 28.05.2017.
//  Copyright © 2017 Hercules. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var firstTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstTableView.dataSource = self
        firstTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.definiton = "Smiley face!"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2011
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.definiton = "Angry face!"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2011

        let emoji3 = Emoji()
        emoji3.stringEmoji = "😍"
        emoji3.definiton = "Smiley face!"
        emoji3.category = "Smiley"
        emoji3.birthYear = 2011

        let emoji4 = Emoji()
        emoji4.stringEmoji = "🏍"
        emoji4.definiton = "Motorcycle!"
        emoji4.category = "Travel"
        emoji4.birthYear = 2014
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🇳🇴"
        emoji5.definiton = "Norwegian flag!"
        emoji5.category = "Flag"
        emoji5.birthYear = 2013
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐶"
        emoji6.definiton = "A cute dog!"
        emoji6.category = "Animal"
        emoji6.birthYear = 2012
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💩"
        emoji7.definiton = "Poo face!"
        emoji7.category = "Smiley"
        emoji7.birthYear = 2011
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😎"
        emoji8.definiton = "Smiley face with sun glasses!"
        emoji8.category = "Smiley"
        emoji8.birthYear = 2011
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "👻"
        emoji9.definiton = "Ohh a ghost!"
        emoji9.category = "Smiley"
        emoji9.birthYear = 2012
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "😴"
        emoji10.definiton = "Sleeping face!"
        emoji10.category = "Smiley"
        emoji10.birthYear = 2012
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]

    }


}

