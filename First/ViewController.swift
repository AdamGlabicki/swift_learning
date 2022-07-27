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
    var blackBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        
        logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = daymix
        view.addSubview(logo)
        
        blackBackground = UIView()
        blackBackground.backgroundColor = UIColor.black
        blackBackground.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blackBackground)
        
        userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.textAlignment = .left
        userName.backgroundColor = .white
        userName.textColor = .black
        userName.text = "Username"
        blackBackground.addSubview(userName)
        
        password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.textAlignment = .left
        password.textColor = .black
        password.backgroundColor = .white
        password.text = "Password"
        blackBackground.addSubview(password)
        
        login = UIButton()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.setTitle("Login", for: .normal)
        login.setTitleColor(.white, for: .normal)
        login.backgroundColor = .orange
        blackBackground.addSubview(login)
        
        trouble = UIButton()
        trouble.translatesAutoresizingMaskIntoConstraints = false
        let title = "Trouble logging in?"
        let titleString = NSMutableAttributedString(string: title)
        titleString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: title.count))
        trouble.setAttributedTitle(titleString, for: .normal)
        trouble.setTitleColor(.white, for: .normal)
        trouble.backgroundColor = .black
        blackBackground.addSubview(trouble)
        
        legalTerms = UILabel()
        legalTerms.translatesAutoresizingMaskIntoConstraints = false
        legalTerms.textAlignment = .center
        legalTerms.textColor = .white
        legalTerms.text = "This space can be used for any legal terms."
        view.addSubview(legalTerms)
        
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 250),
            logo.heightAnchor.constraint(equalToConstant: 100),
            logo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            logo.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
            blackBackground.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 10),
            blackBackground.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -10),
            blackBackground.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 10),
            blackBackground.bottomAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.bottomAnchor, constant: -50),
            
            userName.heightAnchor.constraint(equalToConstant: 50),
            userName.leftAnchor.constraint(equalTo: blackBackground.leftAnchor, constant: 10),
            userName.rightAnchor.constraint(equalTo: blackBackground.rightAnchor, constant: -10),
            userName.topAnchor.constraint(equalTo: blackBackground.topAnchor, constant: 10),

            password.heightAnchor.constraint(equalToConstant: 50),
            password.leftAnchor.constraint(equalTo: blackBackground.leftAnchor, constant: 10),
            password.rightAnchor.constraint(equalTo: blackBackground.rightAnchor, constant: -10),
            password.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 10),

            login.heightAnchor.constraint(equalToConstant: 50),
            login.leftAnchor.constraint(equalTo: blackBackground.leftAnchor, constant: 10),
            login.rightAnchor.constraint(equalTo: blackBackground.rightAnchor, constant: -10),
            login.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),

            trouble.heightAnchor.constraint(equalToConstant: 50),
            trouble.leftAnchor.constraint(equalTo: blackBackground.leftAnchor, constant: 10),
            trouble.rightAnchor.constraint(equalTo: blackBackground.rightAnchor, constant: -10),
            trouble.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 10),
            trouble.bottomAnchor.constraint(equalTo: blackBackground.bottomAnchor, constant: -20),
            
            legalTerms.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            legalTerms.leftAnchor.constraint(equalTo: view.leftAnchor),
            legalTerms.rightAnchor.constraint(equalTo: view.rightAnchor),
            legalTerms.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

