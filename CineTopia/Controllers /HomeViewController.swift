
import UIKit

internal class HomeViewController: UIViewController {
    
    private lazy var imageViewLogo: UIImageView = {
        let imageView = UIImageView(image: UIImage.init(named: "Logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var imageViewcouple: UIImageView = {
        let imageView = UIImageView(image: UIImage.init(named: "Couple"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var labelHome: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideial para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private lazy var buttonHome: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quero começar!", for: .normal)
        button.backgroundColor = UIColor(named: "BackgroundColorButton")
        button.setTitleColor(UIColor(named: "BackgroundColor"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var stackView: UIStackView = {
       let stack = UIStackView(arrangedSubviews: [imageViewLogo, imageViewcouple, labelHome, buttonHome])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 32
        stack.alignment = .center
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        addSubviews()
        setupConstrains()
    }
    
   @objc private func buttonPressed() {
    navigationController?.pushViewController(MoviesViewController(), animated: false)
    }
    
    private func addSubviews() {
        view.addSubview(stackView)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            
            buttonHome.heightAnchor.constraint(equalToConstant: 64),
            buttonHome.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 64),
            buttonHome.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -64),
        ])
    }
}
