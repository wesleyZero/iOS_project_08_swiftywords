//
//  ViewController.swift
//  project_08_swiftywords
//
//  Created by Wesley Johanson on 7/17/24.
//

import UIKit

class ViewController: UIViewController {
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.text = "Score : 0"
        scoreLabel.textAlignment = .right
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scoreLabel)
       
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.text = "CLUES \n another clue"
//        cluesLabel.font = .preferredFont(forTextStyle: .)
        cluesLabel.font = .systemFont(ofSize: 24)
        cluesLabel.numberOfLines = 0
        cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(cluesLabel)
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.text = "answers "
        answersLabel.textAlignment = .right
        answersLabel.font = .systemFont(ofSize: 33)
        answersLabel.numberOfLines = 0
        answersLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(answersLabel)
        
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap the letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 43 )
        currentAnswer.isUserInteractionEnabled = false
//        currentAnswer.numberOfLines = 0
        view.addSubview(currentAnswer)
        
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("Submit", for: .normal)
        view.addSubview(submit)
        
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        view.addSubview(clear)
            
        // new container view
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
        
        
        
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
            ,scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
            
            ,cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor)
            ,cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100)
            ,cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100)
            
            ,answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor)
            ,answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100)
            ,answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5, constant: -100)
            ,answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor)
            
            ,currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ,currentAnswer.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ,currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20)
            ,currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
            
            ,submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor)
            ,submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100)
            ,submit.heightAnchor.constraint(equalToConstant: 44)
            
//            ,clear.topAnchor.constraint(equalTo: submit.bottomAnchor)
            ,clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100)
            ,clear.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor)
            ,clear.heightAnchor.constraint(equalToConstant: 44)
            
            ,buttonsView.widthAnchor.constraint(equalToConstant: 750)
            ,buttonsView.heightAnchor.constraint(equalToConstant: 320)
            ,buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ,buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20)
            ,buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20 )
//            ,buttonsView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 20)
            ])
        
        
        //add some colors
        cluesLabel.textColor = .black
        cluesLabel.backgroundColor = .red
        answersLabel.textColor = .white
        answersLabel.backgroundColor = .blue
        buttonsView.backgroundColor = .green
        
    }
    
//    override func give
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

