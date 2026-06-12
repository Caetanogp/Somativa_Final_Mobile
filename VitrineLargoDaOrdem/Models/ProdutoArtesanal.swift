import Foundation

/// Modelo de dados que representa um produto artesanal da vitrine.
///
/// Conforma a `Identifiable` para ser usado diretamente em `ForEach`.
/// O campo `isFavorito` é mutável (`var`) porque seu estado muda em tempo
/// de execução quando o usuário toca no botão de favoritar.
struct ProdutoArtesanal: Identifiable {
    let id: UUID
    let nome: String
    let artesao: String
    let preco: Double
    let categoria: String
    let imagemNome: String
    let descricao: String
    var isFavorito: Bool

    init(
        id: UUID = UUID(),
        nome: String,
        artesao: String,
        preco: Double,
        categoria: String,
        imagemNome: String,
        descricao: String,
        isFavorito: Bool = false
    ) {
        self.id = id
        self.nome = nome
        self.artesao = artesao
        self.preco = preco
        self.categoria = categoria
        self.imagemNome = imagemNome
        self.descricao = descricao
        self.isFavorito = isFavorito
    }
}
