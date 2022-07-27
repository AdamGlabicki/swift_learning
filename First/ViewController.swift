//
//  ViewController.swift
//  First
//
//  Created by Adam Głąbicki Airnauts on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {
    var userNameTextField = UITextField()
    var passwordTextField = UITextField()
    var legalTermsLabel = UILabel()
    var loginButton = UIButton()
    var troubleButton = UIButton()
    let daymixImage = UIImage(named: "DaymixLogo.png")
    var logoImageView = UIImageView()
    var blackBackgroundView = UIView()
    
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
        let kLogoWidth: CGFloat = 250
        let kLogoHeight: CGFloat = 100
        let kLeftMargin: CGFloat = 10
        let kRightMargin: CGFloat = -10
        let kTopMargin: CGFloat = 10
        let kBlackBottomMargin: CGFloat = -50
        let kTroubleBottomMargin: CGFloat = -20
        let kElementsHeight: CGFloat = 50
        let kLegalTermsHeight: CGFloat = 20
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: kLogoWidth),
            logoImageView.heightAnchor.constraint(equalToConstant: kLogoHeight),
            logoImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            logoImageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
            blackBackgroundView.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: kLeftMargin),
            blackBackgroundView.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: kRightMargin),
            blackBackgroundView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: kTopMargin),
            blackBackgroundView.bottomAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.bottomAnchor, constant: kBlackBottomMargin),
            
            userNameTextField.heightAnchor.constraint(equalToConstant: kElementsHeight),
            userNameTextField.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            userNameTextField.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: kRightMargin),
            userNameTextField.topAnchor.constraint(equalTo: blackBackgroundView.topAnchor, constant: kTopMargin),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: kElementsHeight),
            passwordTextField.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            passwordTextField.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: kRightMargin),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: kTopMargin),
            
            loginButton.heightAnchor.constraint(equalToConstant: kElementsHeight),
            loginButton.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            loginButton.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: kRightMargin),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: kTopMargin),
            
            troubleButton.heightAnchor.constraint(equalToConstant: kElementsHeight),
            troubleButton.leftAnchor.constraint(equalTo: blackBackgroundView.leftAnchor, constant: kLeftMargin),
            troubleButton.rightAnchor.constraint(equalTo: blackBackgroundView.rightAnchor, constant: kRightMargin),
            troubleButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: kTopMargin),
            troubleButton.bottomAnchor.constraint(equalTo: blackBackgroundView.bottomAnchor, constant: kTroubleBottomMargin),
            
            legalTermsLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            legalTermsLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            legalTermsLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            legalTermsLabel.heightAnchor.constraint(equalToConstant: kLegalTermsHeight),
        ])
    }
}

