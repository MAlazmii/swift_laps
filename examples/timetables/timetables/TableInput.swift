import Foundation

enum TableInput {
    static func parse(_ text: String) -> Int? {
        guard let value = Int(text.trimmingCharacters(in: .whitespacesAndNewlines)),
              value >= Int.min / 30, value <= Int.max / 30 else { return nil }
        return value
    }
}
