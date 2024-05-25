//
//  ViewController.swift
//  buttonAreaPOC
//
//  Created by 서채희 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var curX = 9.0
        while curX < self.view.frame.maxX {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .systemGray4
            self.view.addSubview(view)
            
            NSLayoutConstraint.activate([
                view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: curX),
                view.topAnchor.constraint(equalTo: self.view.topAnchor),
                view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
                view.widthAnchor.constraint(equalToConstant: 1)
            ])
            curX += 10
        }
        
        var curY = 9.0
        while curY < self.view.frame.maxY {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .systemGray4
            self.view.addSubview(view)
            
            NSLayoutConstraint.activate([
                view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: curY),
                view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                view.heightAnchor.constraint(equalToConstant: 1)
            ])
            curY += 10
        }
        
        let button = UIButton()
        button.backgroundColor = .tintColor
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(touchDragExit), for: .touchDragExit)
        button.addTarget(self, action: #selector(touchDown), for: .touchDown)
        button.addTarget(self, action: #selector(touchDragEnter), for: .touchDragEnter)
        button.addTarget(self, action: #selector(touchUp), for: .touchUpInside)
        button.addTarget(self, action: #selector(touchUp), for: .touchUpOutside)
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 150),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        label.backgroundColor = .white
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    let label = UILabel()


    @objc func touchDragExit() {
        label.text = "🏃‍♀️Exit"
        print("🏃‍♀️Exit")
    }
    
    @objc func touchDragEnter() {
        label.text = "🏠Enter"
        print("🏠Enter")
    }
    
    @objc func touchUp() {
        label.text = ""
    }
    
    @objc func touchDown() {
        print("down down down down")
    }
}

