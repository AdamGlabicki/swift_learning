//
//  ViewController.swift
//  First
//
//  Created by Adam Głąbicki Airnauts on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {
    private let kLogoWidth: CGFloat = 250
    private let kLogoHeight: CGFloat = 100
    private let kLeftMargin: CGFloat = 10
    private let kRightMargin: CGFloat = 10
    private let kTopMargin: CGFloat = 10
    private let kBlackBottomMargin: CGFloat = 50
    private let kTroubleBottomMargin: CGFloat = 20
    private let kElementsHeight: CGFloat = 50
    private let kLegalTopMargin: CGFloat = 200
    private let userNameTextField = UITextField()
    private let passwordTextField = UITextField()
    private let legalTermsLabel = UILabel()
    private let loginButton = UIButton()
    private let troubleButton = UIButton()
    private let daymixImage = UIImage(named: "DaymixLogo.png")
    private let logoImageView = UIImageView()
    private let blackBackgroundView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        setupConstraints()
        
    }
    
    func setupView(){
        let userNameString = "username"
        let passwordString = "password"
        let loginString = "login"
        let title = "trouble logging in?"
        let legalString = "This space can be used for any legal terms."
        
        view.backgroundColor = .gray
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = daymixImage
        view.addSubview(logoImageView)
        
        blackBackgroundView.backgroundColor = .black
        blackBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blackBackgroundView)
        
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.textAlignment = .left
        userNameTextField.backgroundColor = .white
        userNameTextField.textColor = .black
        userNameTextField.placeholder = userNameString
        blackBackgroundView.addSubview(userNameTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.textAlignment = .left
        passwordTextField.textColor = .black
        passwordTextField.backgroundColor = .white
        passwordTextField.placeholder = passwordString
        blackBackgroundView.addSubview(passwordTextField)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle(loginString, for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .orange
        blackBackgroundView.addSubview(loginButton)
        
        troubleButton.translatesAutoresizingMaskIntoConstraints = false
        let titleString = NSMutableAttributedString(string: title)
        titleString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: title.count))
        troubleButton.setAttributedTitle(titleString, for: .normal)
        troubleButton.setTitleColor(.white, for: .normal)
        troubleButton.backgroundColor = .black
        blackBackgroundView.addSubview(troubleButton)
        
        legalTermsLabel.translatesAutoresizingMaskIntoConstraints = false
        legalTermsLabel.textAlignment = .center
        legalTermsLabel.textColor = .white
        legalTermsLabel.text = legalString
        view.addSubview(legalTermsLabel)
    }
    
    func setupConstraints(){
        
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: kLogoWidth),
            logoImageView.heightAnchor.constraint(equalToConstant: kLogoHeight),
            logoImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
            blackBackgroundView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: kTopMargin),
            blackBackgroundView.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: kLeftMargin),
            blackBackgroundView.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -kRightMargin),
            blackBackgroundView.bottomAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.bottomAnchor, constant: -kBlackBottomMargin),
            
            userNameTextField.heightAnchor.constraint(equalToConstant: kElementsHeight),
            userNameTextField.topAnchor.constraint(equalTo: blackBackgroundView.topAnchor, constant: kTopMargin),
            userNameTextField.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            userNameTextField.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: -kRightMargin),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: kElementsHeight),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: kTopMargin),
            passwordTextField.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            passwordTextField.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: -kRightMargin),
            
            loginButton.heightAnchor.constraint(equalToConstant: kElementsHeight),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: kTopMargin),
            loginButton.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            loginButton.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: -kRightMargin),
            
            troubleButton.heightAnchor.constraint(equalToConstant: kElementsHeight),
            troubleButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: kTopMargin),
            troubleButton.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            troubleButton.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: -kRightMargin),
            troubleButton.bottomAnchor.constraint(equalTo: blackBackgroundView.bottomAnchor, constant: -kTroubleBottomMargin),
            
            legalTermsLabel.topAnchor.constraint(greaterThanOrEqualTo: blackBackgroundView.bottomAnchor, constant: -kLegalTopMargin),
            legalTermsLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            legalTermsLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            legalTermsLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
        ])
    }
}

