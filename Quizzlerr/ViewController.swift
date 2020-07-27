//
//  ViewController.swift
//  Quizzlerr
//
//  Created by Nabeel on 4/20/20.
//  Copyright © 2020 TMN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionText: UILabel!
    @IBOutlet weak var option_1: UIButton!
    @IBOutlet weak var option_2: UIButton!
    @IBOutlet weak var option_3: UIButton!
    @IBOutlet weak var option_4: UIButton!
    
    var questoinArray:[String] = ["a","b"]
    var questionNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionText.text = questoinArray[0]
    }
    @IBAction func optionSelected(_ sender: UIButton) {
        print(sender.tag)
        updateUI()
    }
    func updateUI() {
       questionNumber+=1
        QuestionText.text = questoinArray[questionNumber]
    }

} 

