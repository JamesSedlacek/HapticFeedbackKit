//
//  View+Extensions.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

extension View {
    func hapticFeedback<T: Equatable>(feedback: SensoryFeedback, trigger: T) -> some View {
        modifier(HapticFeedbackModifier(feedback: feedback, trigger: trigger))
    }
}
