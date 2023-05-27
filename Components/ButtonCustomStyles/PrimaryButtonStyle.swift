import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.custom(.light80))
            .padding()
            .background(Color.custom(.violet100))
            .cornerRadius(16)
            .font(Font.customStyle(.title3))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeIn(duration: 0.2), value: configuration.isPressed)
    }
}

internal struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button("Hello World") {
        }
        .buttonStyle(SecondaryButtonStyle())
    }
}
