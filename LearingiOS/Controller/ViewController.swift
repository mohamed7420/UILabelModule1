//
//  ViewController.swift
//  LearingiOS
//
//  Created by Mohamed on 8/12/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeLabel()
        
        
    }
    
    
    // make Label
    
    func makeLabel(){
        
        let frame = CGRect(x: 10, y: 150, width: 200, height: 31)
        
        let label = UILabel(frame: frame)
        
        label.backgroundColor = UIColor.red
        
        label.textColor = UIColor.white
        
        label.font = UIFont.systemFont(ofSize: 18 )
        
        label.font = UIFont(name: "family", size: 18)
        label.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.makeLabelAction))
        label.addGestureRecognizer(tap)
        label.text = "Moahamed osama is iOS developer,work remotly"
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 5
        label.font = UIFont.preferredFont(forTextStyle: .body)
//        label.layer.shadowOffset = CGSize(width: 3 , height: 3)
////        label.shadowColor = UIColor.black
////        label.layer.shadowOpacity = 0.7
////        label.layer.shadowRadius = 2
        // put constraint manually
        
      // label.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: -200)
        
        self.view.addSubview(label)
        
    }
    
    @objc func makeLabelAction(){
        
        print("Hello world!")
    }


}

