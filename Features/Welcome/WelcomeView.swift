import SwiftUI

internal struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            WelcomeSliderView()
                .padding(.horizontal, 30)
            Spacer()
                .frame(height: 30)
            VStack(spacing: 16) {
                Button("Sign Up") {
                }
                .buttonStyle(PrimaryButtonStyle())
                Button("Login") {
                }
                .buttonStyle(SecondaryButtonStyle())
            }
            .padding(.horizontal, 20)
        }
        .padding(.top, 30)
        .padding(.bottom, 8)
    }
}

internal struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
