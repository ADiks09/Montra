import SwiftUI

internal struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            WelcomeSliderView()
                .padding(.horizontal, 30)
            Spacer()
                .frame(height: 30)
            VStack(spacing: 16) {
                Button {} label: {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.custom(.light80))
                        .padding()
                        .background(Color.custom(.violet100))
                        .cornerRadius(16)
                        .font(Font.customStyle(.title3))
                }
                Button {} label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.custom(.violet100))
                        .padding()
                        .background(Color.custom(.violet20))
                        .cornerRadius(16)
                        .font(Font.customStyle(.title3))
                }
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
