import SnapKit
import UIKit

class ViewController: UIViewController {
    private let kLogoWidth: CGFloat = 250
    private let kLogoHeight: CGFloat = 100
    private let kLeftMargin: CGFloat = 10
    private let kRightMargin: CGFloat = 10
    private let kTopMargin: CGFloat = 70
    private let kBlackTopMargin: CGFloat = 10
    private let kBlackBottomMargin: CGFloat = 70
    private let kTroubleBottomMargin: CGFloat = 20
    private let kElementsHeight: CGFloat = 50
    private let kLegalTopMargin: CGFloat = 100
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
            make.width.lessThanOrEqualTo(kLogoWidth).priority(.required)
            make.height.lessThanOrEqualTo(kLogoHeight).priority(.required)
            make.top.equalTo(view.snp.topMargin).priority(.required)
            make.centerX.equalToSuperview().priority(.required)
        }
        
        blackBackgroundView.snp.makeConstraints{make in
            make.top.equalTo(logoImageView.snp.bottom).offset(kBlackTopMargin).priority(.required)
            make.left.lessThanOrEqualTo(view.snp.leftMargin).offset(kLeftMargin).priority(.required)
            make.right.greaterThanOrEqualTo(view.snp.rightMargin).offset(-kRightMargin).priority(.required)
            make.bottom.greaterThanOrEqualTo(view.snp.bottom).offset(-kBlackBottomMargin).priority(.required)
        }
        
        userNameTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight).priority(.required)
            make.top.greaterThanOrEqualTo(blackBackgroundView.snp.topMargin).priority(.required)
            make.top.lessThanOrEqualTo(blackBackgroundView.snp.topMargin).offset(kTopMargin).priority(.high)
            make.left.lessThanOrEqualTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin).priority(.high)
            make.right.greaterThanOrEqualTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin).priority(.high)
        }
        
        passwordTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight).priority(.required)
            make.top.greaterThanOrEqualTo(userNameTextField.snp.bottomMargin).priority(.required)
            make.top.lessThanOrEqualTo(userNameTextField.snp.bottomMargin).offset(kTopMargin).priority(.low)
            make.left.lessThanOrEqualTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin).priority(.high)
            make.right.greaterThanOrEqualTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin).priority(.high)
        }
        
        loginButton.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight).priority(.required)
            make.top.greaterThanOrEqualTo(passwordTextField.snp.bottomMargin).priority(.required)
            make.top.lessThanOrEqualTo(passwordTextField.snp.bottomMargin).offset(kTopMargin).priority(.low)
            make.left.lessThanOrEqualTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin).priority(.high)
            make.right.greaterThanOrEqualTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin).priority(.high)
        }
        
        troubleButton.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight).priority(.required)
            make.top.greaterThanOrEqualTo(loginButton.snp.bottomMargin).priority(.required)
            make.top.lessThanOrEqualTo(loginButton.snp.bottomMargin).offset(kTopMargin).priority(.low)
            make.left.lessThanOrEqualTo(blackBackgroundView.snp.leftMargin).offset(kLeftMargin).priority(.high)
            make.right.greaterThanOrEqualTo(blackBackgroundView.snp.rightMargin).offset(-kRightMargin).priority(.high)
            make.bottom.greaterThanOrEqualTo(blackBackgroundView.snp.bottomMargin).offset(-kTroubleBottomMargin).priority(.low)
            make.bottom.lessThanOrEqualTo(blackBackgroundView.snp.bottomMargin).priority(.required)
        }
        
        legalTermsLabel.snp.makeConstraints{make in
            make.top.greaterThanOrEqualTo(blackBackgroundView.snp.bottom).priority(.required)
            make.top.lessThanOrEqualTo(blackBackgroundView.snp.bottom).offset(kLegalTopMargin).priority(.low)
            make.left.lessThanOrEqualToSuperview().priority(.required)
            make.right.greaterThanOrEqualToSuperview().priority(.required)
            make.bottom.equalTo(view.snp.bottomMargin).priority(.required)
        }
    }
}

