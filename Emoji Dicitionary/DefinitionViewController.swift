//
//  DefinitionViewController.swift
//  Emoji Dicitionary
//
//  Created by Viviana B.P on 9/2/17.
//  Copyright © 2017 vivbenpar. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "🦁" {
        definitionLabel.text = "Awesome Lion!"
        }
        if emoji == "😚" {
            definitionLabel.text = "A little face sending a kiss"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
