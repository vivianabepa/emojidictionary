//
//  ViewController.swift
//  Emoji Dicitionary
//
//  Created by Viviana B.P on 9/2/17.
//  Copyright © 2017 vivbenpar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.meaning
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)//code to not show the last item selected
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
        let emoji1 = Emoji ()
        emoji1.meaning = "😍"
        emoji1.originDate = 2009
        emoji1.definition = "Smiling face with heart-shaped eyes"
        emoji1.category = "Smiley"
        
        let emoji2 = Emoji ()
        emoji2.meaning = "😚"
        emoji2.originDate = 2015
        emoji2.definition = "Little face sending a kiss"
        emoji2.category = "Smiley"
        
        let emoji3 = Emoji ()
        emoji3.meaning = "🤓"
        emoji3.originDate = 2013
        emoji3.definition = "Nerdy face"
        emoji3.category = "Smiley"
        
        let emoji4 = Emoji ()
        emoji4.meaning = "😇"
        emoji4.originDate = 2010
        emoji4.definition = "Smiling face with halo"
        emoji4.category = "Smiley"

        let emoji5 = Emoji ()
        emoji5.meaning = "💩"
        emoji5.originDate = 2010
        emoji5.definition = "Pile of poop"
        emoji5.category = "Smiley"
        
        let emoji6 = Emoji ()
        emoji6.meaning = "🦁"
        emoji6.originDate = 2016
        emoji6.definition = "Awesome Lion!"
        emoji6.category = "Animals"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
    
}

