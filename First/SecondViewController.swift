import SnapKit
import UIKit

class SecoundViewControler: UIViewController {
    private let nameTextField = UITextField()
    private let approvalButton = UIButton()
    private let nameString = "name"
    private let kLeftMargin: CGFloat = 10
    private let kRightMargin: CGFloat = 10
    private let kTopMargin: CGFloat = 20
    private let kElementsHeight: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.textAlignment = .left
        nameTextField.backgroundColor = .white
        nameTextField.textColor = .black
        nameTextField.placeholder = nameString
        view.addSubview(nameTextField)
        
        nameTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.left.equalTo(view.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(view.snp.rightMargin).offset(-kRightMargin)
            make.centerY.equalTo(view.snp.centerY)
        }
    }
}
