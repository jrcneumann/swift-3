//
//  ViewController.swift
//  FunFacts
//
//  Created by James Neumann on 12/28/16.
//  Copyright © 2016 James Neumann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFact: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFact.text = factProvider.getRandomFact()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNewFact() {
        funFact.text = factProvider.getRandomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    

}

