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
        view.addSubview(cluesLabel)
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.textAlignment = .right
        answersLabel.font = .systemFont(ofSize: 33)
        answersLabel.numberOfLines = 0
        view.addSubview(answersLabel)
        
        
        
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo:
                view.layoutMarginsGuide.topAnchor)
            ,scoreLabel.trailingAnchor.constraint(equalTo:
                view.layoutMarginsGuide.trailingAnchor)
            ])
        
        
    }
    
//    override func give
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

