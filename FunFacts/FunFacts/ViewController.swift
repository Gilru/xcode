//
//  ViewController.swift
//  FunFacts
//
//  Created by GILBERT  on 2014-10-25.
//  Copyright (c) 2014 GILBERT . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var buttonShowFacts: UIButton!
    
    let shoppingList = FactBook();
    let colorList = ColorWheel();
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var randomColor = colorList.showRandomColor()
        funFactLabel.text = shoppingList.randomFact()
        view.backgroundColor = randomColor
        buttonShowFacts.tintColor = randomColor

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAnotherFacts() {
        
        var randomColor = colorList.showRandomColor()
        
        funFactLabel.text = shoppingList.randomFact()
        view.backgroundColor = randomColor
        buttonShowFacts.tintColor = randomColor
        
        
    }
}

