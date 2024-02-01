//
//  HapticFeedbackToggle.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

public struct HapticFeedbackToggle: View {
    @HapticFeedbackProvider private var isHapricEnabled

    public var body: some View {
        Toggle(isOn: $isHapricEnabled) { }
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
