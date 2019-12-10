//
//  ViewController.swift
//  WhatToWhatch?
//
//  Created by Nikita on 09/12/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var showsLabel: UILabel!
    @IBOutlet var randomShowLable: UILabel!
    @IBOutlet var botSpokenLabel: UILabel!
    @IBOutlet var addShowTextField: UITextField!
    @IBOutlet var addShowBtn: UIButton!
    @IBOutlet var randomShowStackView: UIStackView!
    @IBOutlet var addShowStackView: UIStackView!
    @IBOutlet var showsStackView: UIStackView!
    
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
   
    func updateShowLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }
    @IBAction func whatToWatchButton(_ sender: Any) {
        randomShowLable.text = shows.randomElement()
        randomShowLable.isHidden = false
        botSpokenLabel.isHidden = false
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        shows.append(showName)
        updateShowLabel()
        addShowTextField.text = ""
        showsStackView.isHidden = false
        
        if shows.count > 1{
            randomShowStackView.isHidden = false
            botSpokenLabel.isHidden = true
            randomShowLable.isHidden = true
        }
    }
    

}

