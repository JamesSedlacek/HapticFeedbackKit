//
//  View+Extensions.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

extension View {
    public func hapticFeedback<T: Equatable>(_ feedback: SensoryFeedback, trigger: T) -> some View {
        modifier(HapticFeedbackModifier(feedback: feedback, trigger: trigger))
    }
}
