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
    
    var questoinArray:[[String]] = QuestionBank.QuestionVariable.Question
    var questionNumber:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (questoinArray.count-1)==0{
            QuestionText.text = "No Question Available"
            option_1.isHidden = true
            option_2.isHidden = true
            option_3.isHidden = true
            option_4.isHidden = true
        }else{
            QuestionText.text = questoinArray[1][0]
        }
    }
    @IBAction func optionSelected(_ sender: UIButton) {
        print(sender.tag)
        updateUI()
    }
    func updateUI() {
        if questionNumber<(questoinArray.count - 1){
       questionNumber+=1
        QuestionText.text = questoinArray[questionNumber][0]
        }else{
            print("You are done",questionNumber)
            QuestionText.text = "You are done for now"
            QuestionText.font = UIFont(name: QuestionText.font.fontName, size: 30)
            option_1.isHidden = true
            option_2.isHidden = true
            option_3.isHidden = true
            option_4.isHidden = true
            
           
        }
    }
} 

