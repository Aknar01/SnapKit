//
//  ViewController.swift
//  Extra
//
//  Created by Aknar Assanov on 19.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
//    let myLabel2 = UILabel()
    private var accountMoney = 0
    private lazy var myDiamond: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Diamond")
        return imageView
    }()
    
    private lazy var myBackground: UIImageView = {
        let backgroundView = UIImageView()
        backgroundView.image = UIImage(named: "background")
        return backgroundView
    }()
    
    private lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "I am Rich"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    private lazy var myLabel2: UILabel = {
        let label = UILabel()
        label.text = "I can buy anything"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    private lazy var myLabel3: UILabel = {
        let label = UILabel()
        label.text = "Account: \(accountMoney)$"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.setTitle("Button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.black, for: .normal)
        button.layer.shadowRadius = 20
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.masksToBounds = false
        button.clipsToBounds = true
        button.addAction(UIAction { _ in
            self.accountMoney = Int.random(in: 1000...10000)
            self.myLabel3.text = "Account: \(self.accountMoney)$"
        }, for: .touchUpInside
        )
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
}

//MARK: - Setup views and constraints methods

private extension ViewController {
    
    func setupViews() {
        view.addSubview(myBackground)
        view.addSubview(myDiamond)
        view.addSubview(myLabel)
        view.addSubview(myLabel2)
        view.addSubview(myLabel3)
        view.addSubview(myButton)
    }
    
    func setupConstraints() {
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        myBackground.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        myLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(115)
            make.top.equalToSuperview().inset(150)
        }
        
        myLabel2.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(80)
            make.top.equalToSuperview().inset(600)
        }
        
        myLabel3.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(80)
            make.top.equalToSuperview().inset(640)
        }
        
        myButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(700)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
    }
}
