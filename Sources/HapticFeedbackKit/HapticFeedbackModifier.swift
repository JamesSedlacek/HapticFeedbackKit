//
//  HapticFeedbackModifier.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

struct HapticFeedbackModifier<T: Equatable>: ViewModifier {
    @HapticFeedbackProvider private var isHapticEnabled
    let feedback: SensoryFeedback
    let trigger: T

    func body(content: Content) -> some View {
        content
            .sensoryFeedback(trigger: trigger) { oldValue, newValue in
                isHapticEnabled ? feedback : nil
            }
    }
}
