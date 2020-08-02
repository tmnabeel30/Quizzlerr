//
//  ViewController.swift
//  Quizzlerr
//
//  Created by Nabeel on 4/20/20.
//  Copyright © 2020 TMN. All rights reserved.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {
    @IBOutlet weak var QuestionText: UILabel!
    @IBOutlet weak var option_1: UIButton!
    @IBOutlet weak var option_2: UIButton!
    @IBOutlet weak var option_3: UIButton!
    @IBOutlet weak var option_4: UIButton!
    
    var questoinArray:[[String]] = QuestionBank.QuestionVariable.Question // takes variable from my QuestionBank swift file into array
    var questionNumber:Int = 1 // question 0th is a placeholder
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (questoinArray.count-1)==0{
            // hides option ang give a prompt when there is no question
            QuestionText.text = "No Question Available"
            option_1.isHidden = true
            option_2.isHidden = true
            option_3.isHidden = true
            option_4.isHidden = true
        }else{
            QuestionText.text = questoinArray[1][0]
            
            //This code also takes question in account(set the title of buttion
            option_1.setTitle(questoinArray[questionNumber][2], for: .normal)
            option_2.setTitle(questoinArray[questionNumber][3], for: .normal)
            option_3.setTitle(questoinArray[questionNumber][4], for: .normal)
            option_4.setTitle(questoinArray[questionNumber][5], for: .normal)
            
            
        }
    }
    @IBAction func optionSelected(_ sender: UIButton) {
        print(sender.tag)
         // This is for checking question
        if let ansChose = sender.currentTitle{
                if ansChose == questoinArray[questionNumber][1]{
                    sender.backgroundColor = UIColor.red
                    print("Sucessful")
                    ProgressHUD.showSucceed()
                    
                     do   {
                        
                       
                    }
                    
               
                }else{
                    print("Wrong")
                    ProgressHUD.showFailed()
            
                }
                updateUI()    // execute UI to refresh
            }

        }
 
    // function which Up date UI increase question no. and change options in UI
    func updateUI() {
        if questionNumber<(questoinArray.count - 1){
       questionNumber+=1//increase question which lead to go to another question
        QuestionText.text = questoinArray[questionNumber][0]
            // updateUI every time we click since questoin+=1
            option_1.setTitle(questoinArray[questionNumber][2], for: .normal)
            option_2.setTitle(questoinArray[questionNumber][3], for: .normal)
            option_3.setTitle(questoinArray[questionNumber][4], for: .normal)
            option_4.setTitle(questoinArray[questionNumber][5], for: .normal)
            
        }else{
            print("You are done",questionNumber)
            // this code gives a prompt when all questions are completed by user
            QuestionText.text = "You are done for now"
            QuestionText.font = UIFont(name: QuestionText.font.fontName, size: 30)
            option_1.isHidden = true
            option_2.isHidden = true
            option_3.isHidden = true
            option_4.isHidden = true
            
        
            
           
        }
      
    }
} 

