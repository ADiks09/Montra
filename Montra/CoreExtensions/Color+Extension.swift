import SwiftUI

extension Color {
    enum CustomColor: String {
        case violet100
        case violet20
        case light80
        case light20
        case dark50
        case dark25
        case dark100
        case dark75
    }

    static func custom(_ color: CustomColor) -> Color {
        Color(color.rawValue)
    }
}
