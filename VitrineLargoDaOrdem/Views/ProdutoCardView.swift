import SwiftUI

struct ProdutoCardView: View {
    @Binding var produto: ProdutoArtesanal

    private var precoFormatado: String {
        Formatters.moedaBRL(produto.preco)
    }

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 8) {
                Image(systemName: produto.imagemNome)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 90)
                    .foregroundStyle(.indigo.opacity(0.8))
                    .padding(.top, 12)
                    .accessibilityLabel("Imagem do produto: \(produto.nome), categoria \(produto.categoria)")

                VStack(alignment: .leading, spacing: 4) {
                    Text(produto.nome)
                        .font(.headline)
                        .foregroundStyle(.primary)
                        .lineLimit(nil)

                    Text(produto.categoria)
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Text(precoFormatado)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.indigo)
                        .accessibilityLabel("Preço: \(precoFormatado)")
                }
                .accessibilityElement(children: .combine)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            }
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 2)

            Button {
                withAnimation(.spring(response: 0.25, dampingFraction: 0.7)) {
                    produto.isFavorito.toggle()
                }
            } label: {
                Image(systemName: produto.isFavorito ? "heart.fill" : "heart")
                    .foregroundStyle(produto.isFavorito ? .red : .gray)
                    .font(.system(size: 18, weight: .semibold))
            }
            .frame(minWidth: 44, minHeight: 44)
            .contentShape(Rectangle())
            .buttonStyle(.plain)
            .accessibilityLabel(produto.isFavorito ? "Remover dos favoritos" : "Adicionar aos favoritos")
            .accessibilityHint("Toque duas vezes para alterar o estado de favorito deste produto")
        }
    }
}
