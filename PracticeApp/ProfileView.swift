import UIKit

class ProfileView : UIViewController {
    
    private var leftBarButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        configureBarBurron()
    }
    
    func configureBarBurron() {
        leftBarButton.target = self
        leftBarButton.action = #selector(showDismiss)
        leftBarButton.image = UIImage(systemName: "restart")
        leftBarButton.tintColor = .systemBlue
        navigationItem.leftBarButtonItem = leftBarButton
    }
    @objc func showDismiss() {
        navigationController?.popViewController(animated: true)
    }
}
