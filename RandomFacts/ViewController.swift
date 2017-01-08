//
//  ViewController.swift
//  RandomFacts
//
//  Created by Shane Noonan on 08/01/2017.
//  Copyright © 2017 Shane Noonan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.layer.cornerRadius = 20
        label.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomFacts(_ sender: Any) {
        
        let array = ["Banging your head against a wall burns 150 calories an hour", "When hippos are upset, their sweat turns red", "Billy goats urinate on their own heads to smell more attractive to females", "Only 9% of the Irish population are natural redheads", "The Late Late Show is the world's longest running talk show", "Coca-Cola would be green if coloring wasn’t added to it", "A broken clock is right two times every day", "Avocados are poisonous to birds"]
        
        let randomFact = Int(arc4random_uniform(UInt32(array.count)))
        label.text = array[randomFact]
    }

}

