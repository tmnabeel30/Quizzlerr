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
    @IBOutlet weak var QuestionImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func optionSelected(_ sender: UIButton) {
        print(sender.tag)
    }
    

}

