import UIKit

class LaunchScreen: UIViewController {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "play.circle"))
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemOrange
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
    }
    
    private func addViews() {
        view.addAutolayoutSubView(imageView)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
