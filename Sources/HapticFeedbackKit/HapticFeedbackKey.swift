//
//  HapticFeedbackKey.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

public struct HapticFeedbackKey: EnvironmentKey {
    public static let defaultValue: HapticFeedbackProviding = HapticFeedbackProvider()
}

public extension EnvironmentValues {
    var hapticFeedbackProvider: HapticFeedbackProviding {
        get { self[HapticFeedbackKey.self] }
        set { self[HapticFeedbackKey.self] = newValue }
    }
}
