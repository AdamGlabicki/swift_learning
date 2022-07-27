//
//  ViewController.swift
//  First
//
//  Created by Adam Głąbicki Airnauts on 25/07/2022.
//
import SnapKit
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
        
        logoImageView.snp.makeConstraints{make in
            make.width.equalTo(kLogoWidth)
            make.height.equalTo(kLogoHeight)
            make.top.equalTo(view.snp.topMargin)
            make.centerX.equalToSuperview()
        }
        
        blackBackgroundView.snp.makeConstraints{make in
            make.top.equalTo(logoImageView.snp.bottom).offset(kTopMargin)
            make.left.equalTo(view.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(view.snp.rightMargin).offset(-kRightMargin)
            make.bottom.lessThanOrEqualTo(view.snp.bottom).offset(-kBlackBottomMargin)
        }
        
        userNameTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.top.equalTo(blackBackgroundView.snp.topMargin).offset(kTopMargin)
            make.left.equalTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin)
        }
        
        passwordTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.top.equalTo(userNameTextField.snp.bottomMargin).offset(kTopMargin)
            make.left.equalTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin)
        }
        
        loginButton.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.top.equalTo(passwordTextField.snp.bottomMargin).offset(kTopMargin)
            make.left.equalTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin)
        }
        
        troubleButton.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.top.equalTo(loginButton.snp.bottomMargin).offset(kTopMargin)
            make.left.equalTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin)
            make.bottom.equalTo(blackBackgroundView.snp.bottomMargin).offset(-kTroubleBottomMargin)
        }
        
        legalTermsLabel.snp.makeConstraints{make in
            make.top.greaterThanOrEqualTo(blackBackgroundView.snp.bottomMargin).offset(-kLegalTopMargin)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalTo(view.snp.bottomMargin)
        }
    }
}

