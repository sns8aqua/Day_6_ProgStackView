//
//  ViewController.swift
//  ProgStackView
//
//  Created by Santhosh on 13/01/22.
//

import UIKit

class ViewController: UIViewController {

    var myStackView: UIStackView?
    
    var mylabel: UILabel?
    var mylabel2: UILabel?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myStackView = UIStackView()
        myStackView?.axis = .vertical
        myStackView?.spacing = 20
        
        
        mylabel = UILabel()
        mylabel?.backgroundColor = .red
        mylabel?.text = "sdjkhfklsdjfksdgkjfsdjkfgkjsdgfds"
        
        mylabel2 = UILabel()
        mylabel2?.backgroundColor = .green
        mylabel2?.text = "sdjkhfklsdjfksdgkjfsdjkfgkjsdgfds"
        if let label = mylabel, let label2 = mylabel2 {
            self.myStackView?.addArrangedSubview(label)
            self.myStackView?.addArrangedSubview(label2)
        }
        
        if let stack = myStackView {
            self.view.addSubview(stack)
        }
        
        
        self.myStackView?.translatesAutoresizingMaskIntoConstraints = false
        
       if let topConstriant = myStackView?.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
        let leadingConstriant = myStackView?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
        let trailingConstriant = myStackView?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40) {
            self.view.addConstraints([topConstriant, leadingConstriant, trailingConstriant])

        }
        
        
    }


}

