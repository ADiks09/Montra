import SwiftUI

@MainActor
internal final class WelcomeSliderViewModel: ObservableObject {
    var sliderCount: Int {
        Self.sliderItems.count
    }

    var selectedSliderItem: SliderItem {
        Self.sliderItems[currentSliderIndex]
    }

    @Published private var currentSliderIndex = 0

    func isSelected(index: Int) -> Bool {
        index == currentSliderIndex
    }

    func dragGestureEndHandler(_ value: DragGesture.Value) {
        if value.translation.width < 0 {
            if currentSliderIndex == sliderCount - 1 {
                currentSliderIndex = 0
                return
            }
            currentSliderIndex += 1
        }

        if value.translation.width > 0 {
            if currentSliderIndex == 0 {
                currentSliderIndex = sliderCount - 1
                return
            }
            currentSliderIndex -= 1
        }
    }
}

extension WelcomeSliderViewModel {
    struct SliderItem {
        let imageName: String
        let titleText: String
        let bodyText: String
    }

    static var sliderItems: [SliderItem] { [
        .init(
            imageName: "im_welcome_1",
            titleText: "Gain total control of your money",
            bodyText: "Become your own money manager and make every cent count"
        ),
        .init(
            imageName: "im_welcome_2",
            titleText: "Know where your money goes",
            bodyText: "Track your transaction easily, with categories and financial report"
        ),
        .init(
            imageName: "im_welcome_3",
            titleText: "Planning ahead",
            bodyText: "Setup your budget for each category so you in control"
        )
    ] }
}
