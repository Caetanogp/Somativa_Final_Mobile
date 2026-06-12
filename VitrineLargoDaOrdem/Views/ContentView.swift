import SwiftUI

struct ContentView: View {
    @State private var produtos = ProdutoDataSource.produtos
    @State private var textoBusca = ""

    private let colunas = [GridItem(.adaptive(minimum: 150), spacing: 16)]

    // Filtra por índice para preservar o Binding ao favoritar com busca ativa.
    private var produtosFiltrados: [Int] {
        produtos.indices.filter { index in
            guard !textoBusca.isEmpty else { return true }
            let p = produtos[index]
            return p.nome.localizedCaseInsensitiveContains(textoBusca)
                || p.categoria.localizedCaseInsensitiveContains(textoBusca)
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                if produtosFiltrados.isEmpty {
                    VStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 48))
                            .foregroundStyle(.secondary)
                        Text("Nenhum produto encontrado para \"\(textoBusca)\".")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.top, 80)
                } else {
                    LazyVGrid(columns: colunas, spacing: 16) {
                        ForEach(produtosFiltrados, id: \.self) { index in
                            NavigationLink {
                                DetalhesProdutoView(produto: produtos[index])
                            } label: {
                                ProdutoCardView(produto: $produtos[index])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Feira do Largo da Ordem")
            .searchable(
                text: $textoBusca,
                prompt: "Buscar por nome ou categoria"
            )
        }
    }
}
