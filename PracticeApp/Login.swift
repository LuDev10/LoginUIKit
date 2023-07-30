import UIKit

class Login: UIViewController {
    
    private var emailLabel = UILabel()
    private var emailTextField = UITextField()
    private var passwordLabel = UILabel()
    private var passwordTextField = UITextField()
    private var loginButton = UIButton()
    private var logoImage = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        configureImage()
        configureLabel(label: emailLabel, text: "Correo Electronico")
        configureLabel(label: passwordLabel, text: "Contraseña")
        configureTextField(textField: emailTextField, placeholder: "Ingrese su correo", type: "email")
        configureTextField(textField: passwordTextField, placeholder: "Ingrese su contraseña", type: "password")
        configureButton()
        configureLayout()
        
    }
    
    func configureLabel(label: UILabel, text: String) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        label.text = text
        label.textColor = .black
        label.layer.cornerRadius = 13
        view.addSubview(label)
    }
    
    func configureTextField(textField: UITextField, placeholder: String, type: String) {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.backgroundColor = .lightGray
        textField.font = .systemFont(ofSize: 18)
        textField.layer.cornerRadius = 13
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        
        switch type {
            
        case "email":
            textField.keyboardType = .emailAddress
            textField.textContentType = .emailAddress
            
        case "password":
            textField.isSecureTextEntry = true
        default:
            break
        }
        
        view.addSubview(textField)
    }
    func configureButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .systemYellow
        loginButton.setTitle("Iniciar Sesion", for: .normal)
        loginButton.layer.cornerRadius = 15
        view.addSubview(loginButton)
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
            
            emailLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
}

