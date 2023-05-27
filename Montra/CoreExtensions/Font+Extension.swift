import SwiftUI

extension Font {
    static func customStyle(_ style: CustomFontStyle) -> Font {
        style.font
    }

    enum CustomFontStyle {
        case title1
        case title3
        case body1

        var font: Font {
            switch self {
            case .title1: return Font.custom("Inter-Bold", size: 32)
            case .title3: return Font.custom("Inter-SemiBold", size: 18)
            case .body1: return Font.custom("Inter-Medium", size: 16)
            }
        }
    }
}
