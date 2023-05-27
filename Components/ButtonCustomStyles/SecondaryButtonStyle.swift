import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.custom(.violet100))
            .padding()
            .background(Color.custom(.violet20))
            .cornerRadius(16)
            .font(Font.customStyle(.title3))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeIn(duration: 0.2), value: configuration.isPressed)
    }
}

internal struct SecondaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button("Hello World") {
        }
        .buttonStyle(SecondaryButtonStyle())
    }
}
