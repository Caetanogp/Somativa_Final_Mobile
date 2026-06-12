import Foundation

enum Formatters {
    static func moedaBRL(_ valor: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter.string(from: NSNumber(value: valor)) ?? "R$ \(valor)"
    }
}
