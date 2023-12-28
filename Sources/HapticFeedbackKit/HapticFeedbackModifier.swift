//
//  HapticFeedbackModifier.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

struct HapticFeedbackModifier<T: Equatable>: ViewModifier {
    @Environment(\.hapticFeedbackProvider)
    private var hapticFeedbackProvider
    private let feedback: SensoryFeedback
    private let trigger: T

    init(feedback: SensoryFeedback, trigger: T) {
        self.feedback = feedback
        self.trigger = trigger
    }

    func body(content: Content) -> some View {
        if hapticFeedbackProvider.isEnabled {
            content
                .sensoryFeedback(feedback, trigger: trigger)
        } else {
            content
        }
    }
}
