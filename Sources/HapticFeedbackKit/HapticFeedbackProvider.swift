//
//  HapticFeedbackProvider.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import SwiftUI

@propertyWrapper struct HapticFeedbackProvider: DynamicProperty {
    private static let defaults: UserDefaults = .standard
    private static let hapticFeedbackKey = "isHapticFeedbackEnabled"
    @AppStorage(hapticFeedbackKey, store: defaults) private var isEnabled: Bool = false
    var wrappedValue: Bool {
        get { isEnabled }
        nonmutating set { isEnabled = newValue }
    }
    var projectedValue: Binding<Bool> { $isEnabled }
}
