import UIKit
import Kingfisher

internal class FavoriteMoviesCollectionViewCell: UIViewController {
    
    let movie = Movie(id: 1, title: "50 Tons de cinza", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQngF0a4kjzl55XwagnDqJDSJ_un1LxUs6-ekUUVDQ19OiOcG0oLPxcnGegCidjExU-KyU&usqp=CAU", synopsis: "A estudante de literatura Anastasia Steele, de 21 anos, entrevista o jovem bilionário Christian Grey, como um favor a sua colega de quarto Kate Kavanagh. Ela vê nele um homem atraente e brilhante, e ele fica igualmente fascinado por ela. Embora seja sexualmente inexperiente, Anastasia mergulha de cabeça nessa relação e descobre os prazeres do sadomasoquismo, tornando-se o objeto de submissão do enigmático Grey.", rate: 9.8, releaseDate: "12/02/2015")
    
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var imageViewCollection: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var labelMovie: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var favoriteButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let icoImage = UIImage(systemName: "heart.fill")?.withTintColor(.systemPurple, renderingMode: .alwaysOriginal)
        button.setImage(icoImage, for: .normal)
        button.addTarget(self, action: #selector(buttonPressedFavorite), for: .touchUpInside)
        return button
    }()
    
    @objc private func buttonPressedFavorite(_ sender: UIButton) {
//     navigationController?.pushViewController(MoviesViewController(), animated: false)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundColor")
        addSubviews()
        setupConstrains()
        setupView(movie)
    }
    
    private func addSubviews() {
        view.addSubview(mainView)
        mainView.addSubview(imageViewCollection)
        mainView.addSubview(labelMovie)
        mainView.addSubview(favoriteButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            mainView.heightAnchor.constraint(equalToConstant: 200),
            mainView.widthAnchor.constraint(equalToConstant: 115),
            
            imageViewCollection.topAnchor.constraint(equalTo: mainView.topAnchor),
            imageViewCollection.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            imageViewCollection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            imageViewCollection.heightAnchor.constraint(equalToConstant: 140),
            
            labelMovie.topAnchor.constraint(equalTo: imageViewCollection.bottomAnchor, constant: 10),
            labelMovie.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            labelMovie.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            
            favoriteButton.topAnchor.constraint(equalTo: labelMovie.bottomAnchor, constant: 8),
            favoriteButton.heightAnchor.constraint(equalToConstant: 25),
            favoriteButton.widthAnchor.constraint(equalToConstant: 25),
            favoriteButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
        ])
    }
    
    internal func setupView(_ movie: Movie) {
        let url = URL(string: movie.image)
        imageViewCollection.kf.setImage(with: url)
        labelMovie.text = movie.title
    }
}
