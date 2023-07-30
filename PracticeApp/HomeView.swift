import UIKit
import Foundation

class HomeView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        navigationController?.navigationBar.backgroundColor = .orange
        title = "Pantalla Home"
//        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        navigationItem.setHidesBackButton(true, animated: false)
        
    }
    
}
