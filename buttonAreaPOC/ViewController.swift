//
//  ViewController.swift
//  buttonAreaPOC
//
//  Created by 서채희 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    private lazy var eventTitleLabel = makeEventTitleLabel()
    private lazy var eventButton = makeEventButton()
    
    // MARK: - VC LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupActions()
    }
    
    // MARK: - Initial Setting
    /**
     set UI elements
     */
    func setupUI() {
        makeGrid()
        self.view.addSubview(eventButton)
        self.view.addSubview(eventTitleLabel)
        
        NSLayoutConstraint.activate([
            eventButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 150),
            eventButton.widthAnchor.constraint(equalToConstant: 100),
            eventButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400),
            eventButton.heightAnchor.constraint(equalToConstant: 40),
            eventTitleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            eventTitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    /**
     Make gridlines whose spacings are 10
     */
    private func makeGrid() {
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
    }
    
    /**
     set actions to UI elements
     */
    func setupActions() {
        eventButton.addTarget(self, action: #selector(touchDragExit), for: .touchDragExit)
        eventButton.addTarget(self, action: #selector(touchDown), for: .touchDown)
        eventButton.addTarget(self, action: #selector(touchDragEnter), for: .touchDragEnter)
        eventButton.addTarget(self, action: #selector(touchUp), for: .touchUpInside)
        eventButton.addTarget(self, action: #selector(touchUp), for: .touchUpOutside)
    }
}


// MARK: - Making UI element
extension ViewController {
    func makeEventButton() -> UIButton {
        let button = UIButton(configuration: .filled())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        return button
    }
    
    func makeEventTitleLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        return label
    }
}

// MARK: - Button actions
extension ViewController {
    @objc func touchDragExit() {
        eventTitleLabel.text = "🏃‍♀️Exit"
    }
    
    @objc func touchDragEnter() {
        eventTitleLabel.text = "🏠Enter"
    }
    
    @objc func touchUp() {
        eventTitleLabel.text = ""
    }
    
    @objc func touchDown() {
        eventTitleLabel.text = "👇Touch Down"
    }
}

