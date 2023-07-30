import UIKit

class Login: UIViewController {
    
    private var emailLabel = UILabel()
    private var emailTextField = UITextField()
    private var passwordLabel = UILabel()
    private var passwordTextField = UITextField()
    private var loginButton = UIButton()
    private var logoImage = UIImageView()
    private var contentView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        configureImage()
        configureStack()
        configureLabel(label: emailLabel, text: "Correo Electronico")
        configureTextField(textField: emailTextField, placeholder: "Ingrese su correo", type: "email")
        configureLabel(label: passwordLabel, text: "Contraseña")
        configureTextField(textField: passwordTextField, placeholder: "Ingrese su contraseña", type: "password")
        configureButton()
        configureLayout()
        
    }
    func configureStack() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.axis = .vertical
        contentView.spacing = 20
        view.addSubview(contentView)
    }
    
    func configureLabel(label: UILabel, text: String) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        label.text = text
        label.textColor = .black
        label.layer.cornerRadius = 13
        contentView.addArrangedSubview(label)
    }
    
    func configureTextField(textField: UITextField, placeholder: String, type: String) {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.backgroundColor = .lightGray
        textField.font = .systemFont(ofSize: 18)
        textField.layer.cornerRadius = 13
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.addTarget(self, action: #selector(textFieldEdit), for: .editingChanged)
        switch type {
            
        case "email":
            textField.keyboardType = .emailAddress
            textField.textContentType = .emailAddress
            
        case "password":
            textField.isSecureTextEntry = true
        default:
            break
        }
        
        contentView.addArrangedSubview(textField)
    }
    @objc func textFieldEdit() {
        if let textEmail = emailTextField.text, let textPass = passwordTextField.text {
            emailTextField.text = textEmail.lowercased()
            passwordTextField.text = textPass.lowercased()
            
        }
    }
    func configureButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .systemYellow
        loginButton.setTitle("Iniciar Sesion", for: .normal)
        loginButton.layer.cornerRadius = 15
        loginButton.addTarget(self, action: #selector(actionLogin), for: .touchDown)
        contentView.addArrangedSubview(loginButton)
    }
    @objc func actionLogin() {
        if emailTextField.text == "navigationController", passwordTextField.text == "123" {
            navigationController?.pushViewController(HomeView(), animated: true)
        }
        else if emailTextField.text == "present",  passwordTextField.text == "1234" {
            let presentView = Present()
            presentView.sheetPresentationController?.detents = [.medium()]
            presentView.isModalInPresentation = true
            present(presentView, animated: true)
            presentView.sheetPresentationController?.selectedDetentIdentifier = .medium
        }
    }
    
    func configureImage() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "Logo")
        logoImage.alpha = 0.4
        view.addSubview(logoImage)
    }

    func configureLayout() {
        NSLayoutConstraint.activate([
            
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 150),
            
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            

            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            loginButton.heightAnchor.constraint(equalToConstant: 30)

        ])
    }
}

