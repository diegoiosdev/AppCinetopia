import Foundation

internal struct Movie {
    
    let id: Int
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let releaseDate: String
}

let movies: [Movie] = [
    
    Movie(id: 1, title: "50 Tons de cinza", image:"50Tons", synopsis: "A estudante de literatura Anastasia Steele, de 21 anos, entrevista o jovem bilionário Christian Grey, como um favor a sua colega de quarto Kate Kavanagh. Ela vê nele um homem atraente e brilhante, e ele fica igualmente fascinado por ela. Embora seja sexualmente inexperiente, Anastasia mergulha de cabeça nessa relação e descobre os prazeres do sadomasoquismo, tornando-se o objeto de submissão do enigmático Grey.", rate: 9.8, releaseDate: "12/02/2015"),
    
    Movie(id: 2, title: "Avatar - Caminho das águas", image:"Avatar", synopsis: "Após formar uma família, Jake Sully e Ney'tiri fazem de tudo para ficarem juntos. No entanto, eles devem sair de casa e explorar as regiões de Pandora quando uma antiga ameaça ressurge, e Jake deve travar uma guerra difícil contra os humanos.", rate: 10.1, releaseDate: "15/12/2022"),
    
    Movie(id: 3, title: "Homem de Ferro", image:"Homem de Ferro", synopsis: "Tony Stark é um industrial bilionário e inventor brilhante que realiza testes bélicos no exterior, mas é sequestrado por terroristas que o forçam a construir uma arma devastadora. Em vez disso, ele constrói uma armadura blindada e enfrenta seus sequestradores. Quando volta aos Estados Unidos, Stark aprimora a armadura e a utiliza para combater o crime.", rate: 9.99, releaseDate: "10/04/2008"),
    
    Movie(id: 3, title: "Sr&Sra Smith", image:"Sr&Sra Smith", synopsis: "John e Jane Smith aparentemente parecem formar um casal normal, mas na realidade ambos mantêm um segredo. Os dois são assassinos de aluguel contratados por empresas rivais. A verdade só vem à tona quando John e Jane, sem saber, recebem uma missão para eliminar o mesmo alvo e mais tarde descobrem que devem matar um ao outro.", rate: 9.4, releaseDate: "10/06/2005"),
    
]

