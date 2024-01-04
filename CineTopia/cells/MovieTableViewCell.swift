import UIKit

 internal class MovieTableViewCell: UITableViewCell {
    
    private lazy var imageViewMovie: UIImageView = {
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
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    private lazy var labelMovieRealese: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    internal func configureCell(movie: Movie) {
        labelMovie.text = movie.title
        imageViewMovie.image = UIImage(named: movie.image)
        labelMovieRealese.text = "Lançamento: \(movie.releaseDate)"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupConstrains()
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(imageViewMovie)
        addSubview(labelMovie)
        addSubview(labelMovieRealese)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            imageViewMovie.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageViewMovie.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageViewMovie.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            imageViewMovie.widthAnchor.constraint(equalToConstant: 100),
            
            labelMovie.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -16),
            labelMovie.leadingAnchor.constraint(equalTo: imageViewMovie.trailingAnchor, constant: 16),
            
            labelMovieRealese.topAnchor.constraint(equalTo: labelMovie.bottomAnchor, constant: 8),
            labelMovieRealese.leadingAnchor.constraint(equalTo: imageViewMovie.trailingAnchor, constant: 16),
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
