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
    @State private var trigger: T
    @State private var toggle = false

    init(feedback: SensoryFeedback, trigger: T) {
        self.feedback = feedback
        self._trigger = State(initialValue: trigger)
    }

    func body(content: Content) -> some View {
        content
            .sensoryFeedback(feedback, trigger: toggle)
            .onChange(of: trigger) { _, _ in
                if hapticFeedbackProvider.isEnabled {
                    toggle.toggle()
                }
            }
    }
}
