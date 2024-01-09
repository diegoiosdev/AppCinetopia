import UIKit

 internal class DetailViewController: UIViewController {

    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundColor")
        addSubviews()
        setupConstrains()
        configureCell(movie: movie)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var imageViewDetail: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var labelMovieRate: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private lazy var labelMovieDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    private lazy var stackView: UIStackView = {
       let stack = UIStackView(arrangedSubviews: [imageViewDetail, labelMovieRate, labelMovieDescription])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 15
        stack.alignment = .fill
        return stack
    }()
    
    internal func configureCell(movie: Movie) {
        imageViewDetail.image = UIImage(named: movie.image)
        labelMovieRate.text = "Classificação dos usuários: \(Double(movie.rate))"
        labelMovieDescription.text = movie.synopsis
    }
    
    private func addSubviews() {
        view.addSubview(stackView)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -54),

        ])
    }
}
