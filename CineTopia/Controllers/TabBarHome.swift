import UIKit

 internal class TabBarHome: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarHome()
    }

    private func setupTabBarHome() {
        let home = UINavigationController(rootViewController: MoviesViewController())
        let symbolConfiguration = UIImage.SymbolConfiguration(scale: .medium)
        
        let homeSymbol = UIImage(systemName: "film", withConfiguration: symbolConfiguration)
        home.tabBarItem.image = homeSymbol
        home.tabBarItem.title = "Filmes Populares"
        
        let favorites = UINavigationController(rootViewController: MoviesViewController())
        let iconFavorite = UIImage(systemName: "heart", withConfiguration: symbolConfiguration)
       
        favorites.tabBarItem.image = iconFavorite
        favorites.tabBarItem.title = "favoritos"
        
    }
}
