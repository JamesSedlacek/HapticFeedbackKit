//
//  HapticFeedbackToggle.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

public struct HapticFeedbackToggle: View {
    @Environment(\.hapticFeedbackProvider)
    private var hapticFeedbackProvider

    public init() {}

    public var body: some View {
        let isEnabled = Binding<Bool>(
            get: { hapticFeedbackProvider.isEnabled },
            set: { hapticFeedbackProvider.isEnabled = $0 }
        )

        Toggle(isOn: isEnabled) { }
    }
}

#Preview {
    NavigationStack {
        List {
            HStack(spacing: 12) {
                Image(systemName: "hand.tap")
                    .fontWeight(.medium)
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
                    .padding(4)
                    .background {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.blue)
                    }
                Text("Haptic Feedback")
                    .fixedSize()
                Spacer(minLength: .zero)
                HapticFeedbackToggle()
                    .tint(.blue)
            }
        }
        .navigationTitle("Settings")
    }
}
