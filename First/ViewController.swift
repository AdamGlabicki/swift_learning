//
//  ViewController.swift
//  First
//
//  Created by Adam Głąbicki Airnauts on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {
    var userName: UITextField!
    var password: UITextField!
    var legalTerms: UILabel!
    var login: UIButton!
    var trouble: UIButton!
    let daymix = UIImage(named: "DaymixLogo.png")
    var logo: UIImageView!
    var blackBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        
        logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = daymix
        view.addSubview(logo)
        
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 250),
            logo.heightAnchor.constraint(equalToConstant: 100),
            logo.topAnchor.constraint(equalToSystemSpacingBelow: view.layoutMarginsGuide.topAnchor, multiplier: 1),
            logo.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        blackBackground = UIImageView()
        blackBackground.backgroundColor = UIColor.black
        blackBackground.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blackBackground)
        
        NSLayoutConstraint.activate([
            blackBackground.widthAnchor.constraint(greaterThanOrEqualToConstant: 300),
            blackBackground.heightAnchor.constraint(greaterThanOrEqualToConstant: 250),
            blackBackground.leftAnchor.constraint(greaterThanOrEqualTo: view.layoutMarginsGuide.leftAnchor, constant: 5),
            blackBackground.rightAnchor.constraint(greaterThanOrEqualTo: view.layoutMarginsGuide.rightAnchor, constant: 5),
            blackBackground.topAnchor.constraint(greaterThanOrEqualTo: logo.bottomAnchor, constant: 10),
            blackBackground.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.textAlignment = .left
        userName.backgroundColor = .white
        userName.textColor = .black
        userName.text = "Username"
        blackBackground.addSubview(userName)
        
        NSLayoutConstraint.activate([
            userName.widthAnchor.constraint(greaterThanOrEqualToConstant: 250),
            userName.heightAnchor.constraint(greaterThanOrEqualToConstant: 50),
            userName.leftAnchor.constraint(greaterThanOrEqualTo: blackBackground.leftAnchor, constant: 10),
            userName.rightAnchor.constraint(greaterThanOrEqualTo: blackBackground.rightAnchor, constant: 10),
            userName.topAnchor.constraint(lessThanOrEqualTo: blackBackground.topAnchor, constant: 60),
            userName.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.textAlignment = .left
        password.textColor = .black
        password.backgroundColor = .white
        password.text = "Password"
        blackBackground.addSubview(password)
        
        NSLayoutConstraint.activate([
            password.widthAnchor.constraint(greaterThanOrEqualToConstant: 250),
            password.heightAnchor.constraint(greaterThanOrEqualToConstant: 50),
            password.leftAnchor.constraint(greaterThanOrEqualTo: blackBackground.leftAnchor, constant: 10),
            password.rightAnchor.constraint(greaterThanOrEqualTo: blackBackground.rightAnchor, constant: 10),
            password.topAnchor.constraint(lessThanOrEqualTo: userName.bottomAnchor, constant: 60),
            password.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        login = UIButton()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.setTitle("Login", for: .normal)
        login.setTitleColor(.white, for: .normal)
        login.backgroundColor = .orange
        blackBackground.addSubview(login)
        
        NSLayoutConstraint.activate([
            login.widthAnchor.constraint(greaterThanOrEqualToConstant: 250),
            login.heightAnchor.constraint(greaterThanOrEqualToConstant: 50),
            login.leftAnchor.constraint(greaterThanOrEqualTo: blackBackground.leftAnchor, constant: 10),
            login.rightAnchor.constraint(greaterThanOrEqualTo: blackBackground.rightAnchor, constant: 10),
            login.topAnchor.constraint(lessThanOrEqualTo: password.bottomAnchor, constant: 60),
            login.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        trouble = UIButton()
        trouble.translatesAutoresizingMaskIntoConstraints = false
        let title = "Trouble logging in?"
        let titleString = NSMutableAttributedString(string: title)
        titleString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: title.count))
        trouble.setAttributedTitle(titleString, for: .normal)
        trouble.setTitleColor(.white, for: .normal)
        trouble.backgroundColor = .black
        blackBackground.addSubview(trouble)
        
        NSLayoutConstraint.activate([
            trouble.widthAnchor.constraint(greaterThanOrEqualToConstant: 250),
            trouble.heightAnchor.constraint(greaterThanOrEqualToConstant: 50),
            trouble.leftAnchor.constraint(greaterThanOrEqualTo: blackBackground.leftAnchor, constant: 10),
            trouble.rightAnchor.constraint(greaterThanOrEqualTo: blackBackground.rightAnchor, constant: 10),
            trouble.topAnchor.constraint(greaterThanOrEqualTo: login.bottomAnchor, constant: 60),
            trouble.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
        
        legalTerms = UILabel()
        legalTerms.translatesAutoresizingMaskIntoConstraints = false
        legalTerms.textAlignment = .center
        legalTerms.textColor = .white
        legalTerms.text = "This space can be used for any legal terms."
        view.addSubview(legalTerms)
        
        NSLayoutConstraint.activate([
            legalTerms.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            legalTerms.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
        ])
    }
}

