import UIKit
import Foundation

class HomeView: UIViewController {
    
    private var navigationButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        navigationController?.navigationBar.backgroundColor = .orange
        title = "Pantalla Home"
        //        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        navigationItem.setHidesBackButton(true, animated: false)
        setup()
    }
    private func setup() {
        configureNavigationButton()
        configureLayaout()
    }
    
    private func configureNavigationButton() {
        navigationButton.translatesAutoresizingMaskIntoConstraints = false
        navigationButton.setTitle(" NAvigationController", for: .normal)
        navigationButton.setImage(UIImage(systemName: "person.fill"), for: .normal)
        navigationButton.backgroundColor = .systemRed
        navigationButton.setTitleColor(.black, for: .normal)
        navigationButton.tintColor = .black
        navigationButton.layer.cornerRadius = 15
        navigationButton.addTarget(self, action: #selector(navigation), for: .touchDown)
        view.addSubview(navigationButton)
    }
    @objc func navigation() {
        navigationController?.pushViewController(ProfileView(), animated: true)
    }
    
    private func configureLayaout() {
        NSLayoutConstraint.activate([
            navigationButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            navigationButton.widthAnchor.constraint(equalToConstant: 200),
            navigationButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
}
