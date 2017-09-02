//
//  DefinitionViewController.swift
//  Emoji Dicitionary
//
//  Created by Viviana B.P on 9/2/17.
//  Copyright © 2017 vivbenpar. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.meaning
        birthYearLabel.text = "Origin Date: \(emoji.originDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
