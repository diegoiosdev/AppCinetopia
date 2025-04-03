import UIKit
import Kingfisher

 class FavoriteMoviesCollectionViewCell: UICollectionViewCell {
    
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
        label.textColor = .white
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 1
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(imageViewCollection)
        addSubview(labelMovie)
        addSubview(favoriteButton)
    }

    private func setupConstrains() {
        NSLayoutConstraint.activate([
            
            imageViewCollection.topAnchor.constraint(equalTo: topAnchor),
            imageViewCollection.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageViewCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageViewCollection.heightAnchor.constraint(equalToConstant: 140),
            
            labelMovie.topAnchor.constraint(equalTo: imageViewCollection.bottomAnchor, constant: 10),
            labelMovie.leadingAnchor.constraint(equalTo: leadingAnchor),
            labelMovie.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            favoriteButton.topAnchor.constraint(equalTo: labelMovie.bottomAnchor, constant: 8),
            favoriteButton.heightAnchor.constraint(equalToConstant: 25),
            favoriteButton.widthAnchor.constraint(equalToConstant: 25),
            favoriteButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    internal func setupView(_ movie: Movie) {
        let url = URL(string: movie.image)
        imageViewCollection.kf.setImage(with: url)
        labelMovie.text = movie.title
    }
}
