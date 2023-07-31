import UIKit

class SplashView: UIViewController {
    private var splashViewLoading = UIImageView()
    private var timerSplash = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        timerSplashView()
        
    }
    private func splash(){
        splashViewLoading.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    private func timerSplashView() {
        timerSplash = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in }
        let viewController = Login()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
     
}
