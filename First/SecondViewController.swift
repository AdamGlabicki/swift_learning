import SnapKit
import UIKit



class SecoundViewControler: UIViewController {
    private let nameTextField = UITextField()
    private let approvalButton = UIButton()
    private let nameString = "name"
    private let approvalString = "approve"
    private let kLeftMargin: CGFloat = 10
    private let kRightMargin: CGFloat = 10
    private let kTopMargin: CGFloat = 20
    private let kElementsHeight: CGFloat = 50
    //weak var delegate: nameDelegate?  //delegate
    var nameSend: ((String?) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        
        approvalButton.addTarget(self, action: #selector(approvalButtonPressed), for: .touchUpInside)
        nameTextField.addTarget(self, action: #selector(nameTextFieldChange), for: .editingChanged)
    }
    

    
    @objc func nameTextFieldChange() {
        nameTextField.textColor = .black
    }
    
    @objc func approvalButtonPressed() {
        if (nameTextField.text!.count < 3) {
            nameTextField.textColor = .red
        }else{
            let alert = UIAlertController(title: "Change name?", message: "Change name?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { alert in
                //if let name = self.nameTextField.text{
                    //self.delegate?.changeName(name: text) //delegate
                //}
            self.nameSend?(self.nameTextField.text)
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel))
            self.present(alert, animated: true)
        }
    }
    
    func setupView(){
        view.backgroundColor = .green
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.textAlignment = .left
        nameTextField.backgroundColor = .white
        nameTextField.textColor = .black
        nameTextField.placeholder = nameString
        view.addSubview(nameTextField)
        
        approvalButton.translatesAutoresizingMaskIntoConstraints = false
        approvalButton.setTitle(approvalString, for: .normal)
        approvalButton.backgroundColor = .red
        view.addSubview(approvalButton)
    }
    
    func setupConstraints(){
        nameTextField.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.left.equalTo(view.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(view.snp.rightMargin).offset(-kRightMargin)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        approvalButton.snp.makeConstraints{make in
            make.height.equalTo(kElementsHeight)
            make.left.equalTo(view.snp.leftMargin).offset(kLeftMargin)
            make.right.equalTo(view.snp.rightMargin).offset(-kRightMargin)
            make.top.equalTo(nameTextField.snp.bottom).offset(kTopMargin)
        }
    }
}
