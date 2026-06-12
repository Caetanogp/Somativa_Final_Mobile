import Foundation

/// Fonte de dados local da vitrine.
///
/// Em um app SwiftUI simples, esta lista local substitui uma camada de dados
/// tradicional (DataSource/Delegate do UIKit). O estado reativo do SwiftUI
/// (`@State` + `Binding`) cuida da atualização da interface.
enum ProdutoDataSource {
    static let produtos: [ProdutoArtesanal] = [
        ProdutoArtesanal(
            nome: "Capivara de Madeira",
            artesao: "Seu Aldo Marchetti",
            preco: 89.90,
            categoria: "Madeira",
            imagemNome: "pawprint.fill",
            descricao: "Escultura de madeira entalhada à mão em formato de capivara, símbolo afetivo de Curitiba. Cada peça é única, lixada e finalizada com cera natural."
        ),
        ProdutoArtesanal(
            nome: "Bolsa de Crochê",
            artesao: "Dona Marlene Kruger",
            preco: 129.00,
            categoria: "Roupas e Acessórios",
            imagemNome: "bag.fill",
            descricao: "Bolsa artesanal feita em crochê com fios de algodão, alça reforçada e forro interno. Peça resistente e leve, ideal para o dia a dia."
        ),
        ProdutoArtesanal(
            nome: "Pintura do Largo da Ordem",
            artesao: "Helena Bittencourt",
            preco: 240.00,
            categoria: "Pinturas",
            imagemNome: "paintpalette.fill",
            descricao: "Pintura em tela retratando o casario histórico do Largo da Ordem ao entardecer. Tinta acrílica sobre tela canvas, pronta para emoldurar."
        ),
        ProdutoArtesanal(
            nome: "Imã de Geladeira de Curitiba",
            artesao: "Ateliê Pinhão",
            preco: 15.00,
            categoria: "Lembranças",
            imagemNome: "mappin.circle.fill",
            descricao: "Imã decorativo com pontos turísticos de Curitiba, em resina pintada à mão. Lembrança perfeita e econômica para levar da feira."
        ),
        ProdutoArtesanal(
            nome: "Colar Artesanal de Sementes",
            artesao: "Tânia Nascimento",
            preco: 54.50,
            categoria: "Roupas e Acessórios",
            imagemNome: "sparkles",
            descricao: "Colar montado com sementes naturais e contas de madeira, fio ajustável. Peça leve, ecológica e com acabamento cuidadoso."
        ),
        ProdutoArtesanal(
            nome: "Caneca de Cerâmica",
            artesao: "Oficina Barro & Fogo",
            preco: 48.00,
            categoria: "Cerâmica",
            imagemNome: "cup.and.saucer.fill",
            descricao: "Caneca de cerâmica esmaltada e queimada em alta temperatura, com pega confortável. Cada peça tem pequenas variações que revelam o trabalho manual."
        ),
        ProdutoArtesanal(
            nome: "Quadro do Bondinho da Rua XV",
            artesao: "Helena Bittencourt",
            preco: 195.00,
            categoria: "Pinturas",
            imagemNome: "photo.artframe",
            descricao: "Quadro ilustrado do antigo bondinho da Rua XV de Novembro, impresso em papel de alta gramatura e emoldurado em madeira clara."
        ),
        ProdutoArtesanal(
            nome: "Pão com Bolinho Artesanal",
            artesao: "Padaria da Vovó Inês",
            preco: 22.00,
            categoria: "Comidas Típicas",
            imagemNome: "fork.knife",
            descricao: "Clássico lanche da feira: pão crocante recheado com bolinho artesanal temperado. Feito na hora, com receita de família."
        ),
        ProdutoArtesanal(
            nome: "Relógio Antigo Decorativo",
            artesao: "Antiguidades do Largo",
            preco: 320.00,
            categoria: "Antiguidades",
            imagemNome: "clock.fill",
            descricao: "Relógio de mesa restaurado, com caixa em madeira maciça e mostrador em estilo retrô. Peça de coleção que decora e conta história."
        ),
        ProdutoArtesanal(
            nome: "Cachecol de Lã",
            artesao: "Dona Marlene Kruger",
            preco: 75.00,
            categoria: "Roupas e Acessórios",
            imagemNome: "tshirt.fill",
            descricao: "Cachecol tricotado à mão em lã macia, perfeito para o inverno curitibano. Disponível em tons sóbrios e quentinhos."
        ),
        ProdutoArtesanal(
            nome: "Mini Pinheiro Decorativo",
            artesao: "Seu Aldo Marchetti",
            preco: 39.90,
            categoria: "Decoração",
            imagemNome: "leaf.fill",
            descricao: "Pinheiro do Paraná em miniatura, esculpido em madeira de reflorestamento. Enfeite que celebra o símbolo natural da cidade."
        ),
        ProdutoArtesanal(
            nome: "Sabonete Artesanal de Erva-Mate",
            artesao: "Ateliê Pinhão",
            preco: 18.50,
            categoria: "Lembranças",
            imagemNome: "drop.fill",
            descricao: "Sabonete natural perfumado com erva-mate, produzido em pequenos lotes. Embalagem ecológica e aroma marcante do Paraná."
        ),
        ProdutoArtesanal(
            nome: "Caixa de Música Vintage",
            artesao: "Antiguidades do Largo",
            preco: 280.00,
            categoria: "Antiguidades",
            imagemNome: "music.note",
            descricao: "Caixa de música restaurada com mecanismo original funcionando, tampa em marchetaria. Uma raridade encontrada na feira de antiguidades."
        )
    ]
}
