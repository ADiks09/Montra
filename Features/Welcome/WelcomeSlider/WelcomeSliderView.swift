import SwiftUI

internal struct WelcomeSliderView: View {
    @StateObject private var viewModel = WelcomeSliderViewModel()

    var body: some View {
        VStack {
            Image(viewModel.selectedSliderItem.imageName)
            Group {
                Spacer()
                Text(viewModel.selectedSliderItem.titleText)
                    .font(Font.customStyle(.title1))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.custom(.dark50))
                    .frame(height: 80)
                Spacer()
                    .frame(height: 16)
                Text(viewModel.selectedSliderItem.bodyText)
                    .font(Font.customStyle(.body1))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.custom(.light20))
                    .frame(height: 40)
                Spacer()
                HStack(spacing: 16) {
                    ForEach(0 ..< viewModel.sliderCount, id: \.self) { index in
                        if viewModel.isSelected(index: index) {
                            Circle()
                                .fill(Color.custom(.violet100))
                                .frame(width: 16, height: 16)
                        } else {
                            Circle()
                                .fill(Color.custom(.violet20))
                                .frame(width: 8, height: 8)
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
        }
        .gesture(DragGesture().onEnded(viewModel.dragGestureEndHandler))
    }
}

internal struct WelcomeSliderView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeSliderView()
    }
}
