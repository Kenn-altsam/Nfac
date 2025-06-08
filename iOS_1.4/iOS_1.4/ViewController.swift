//
//  ViewController.swift
//  iOS_1.4
//
//  Created by Altynbek Kenzhe on 06.06.2025.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "profile_image"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 75
        imageView.clipsToBounds = true
        
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Altynbek Kenzhe"
        nameLabel.font = .systemFont(ofSize: 18, weight: .medium)
        nameLabel.textAlignment = .center
        
        func makeInfoStack(title: String, value: String) -> UIStackView {
            let titleLabel = UILabel()
            titleLabel.text = title
            titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            titleLabel.textAlignment = .left
            
            let valueLabel = UILabel()
            valueLabel.text = value
            valueLabel.font = UIFont.systemFont(ofSize: 16)
            valueLabel.textAlignment = .center
            
            let stack = UIStackView(arrangedSubviews: [titleLabel, valueLabel])
            stack.axis = .vertical
            stack.alignment = .center
            stack.spacing = 4
            return stack
        }
        
        let ageStack = makeInfoStack(title: "Age", value: "19")
        let locationStack = makeInfoStack(title: "Location", value: "Almaty")
        let followersStack = makeInfoStack(title: "Followers", value: "155")
        
        let infoStack = UIStackView(arrangedSubviews: [ageStack, locationStack, followersStack])
        infoStack.axis = .horizontal
        infoStack.alignment = .center
        infoStack.spacing = 40
        infoStack.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = UILabel()
        titleLabel.text = "Go to Profile"
        titleLabel.font = UIFont.systemFont(ofSize: 18)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let button = UIButton(type: .system)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(infoStack)
        view.addSubview(titleLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            infoStack.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            infoStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: infoStack.bottomAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
    }
}

