import SwiftUI

struct DetalhesProdutoView: View {
    let produto: ProdutoArtesanal

    @State private var mostrarAlerta = false

    private var precoFormatado: String {
        Formatters.moedaBRL(produto.preco)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: produto.imagemNome)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .foregroundStyle(.indigo.opacity(0.8))
                    .padding(.vertical, 24)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .accessibilitySortPriority(1)
                    .accessibilityLabel("Imagem do produto: \(produto.nome), categoria \(produto.categoria)")

                VStack(alignment: .leading, spacing: 6) {
                    Text(produto.nome)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .accessibilitySortPriority(2)

                    Text("por \(produto.artesao)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                    Text(produto.categoria)
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(.indigo.opacity(0.12))
                        .foregroundStyle(.indigo)
                        .clipShape(Capsule())
                }

                Divider()

                Text(precoFormatado)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.indigo)
                    .accessibilityLabel("Preço: \(precoFormatado)")

                Text(produto.descricao)
                    .font(.body)
                    .foregroundStyle(.primary)
                    .lineLimit(nil)

                Button {
                    mostrarAlerta = true
                } label: {
                    Label("Entrar em contato com o Artesão", systemImage: "message.fill")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.indigo)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .font(.headline)
                }
                .padding(.top, 8)
                .accessibilityLabel("Entrar em contato com o artesão \(produto.artesao)")
                .accessibilityHint("Exibe informações de contato fictício para fins acadêmicos")
            }
            .padding()
        }
        .navigationTitle(produto.nome)
        .navigationBarTitleDisplayMode(.inline)
        .alert("Contato com o Artesão", isPresented: $mostrarAlerta) {
            Button("Entendido", role: .cancel) {}
        } message: {
            Text("Este contato é fictício e existe apenas para fins acadêmicos de demonstração do aplicativo.")
        }
    }
}
