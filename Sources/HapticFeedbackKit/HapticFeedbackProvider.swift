//
//  HapticFeedbackProvider.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import Foundation

@Observable
public final class HapticFeedbackProvider: HapticFeedbackProviding {
    private static let hapticFeedbackKey = "isHapticFeedbackEnabled"
    private let userDefaults: UserDefaults

    /// A property that checks if haptic feedback is enabled or not.
    /// It uses the user defaults to store and retrieve the value.
    public var isEnabled: Bool {
        /// Getter for the isEnabled property.
        /// It accesses the isEnabled key path and returns the value from the user defaults.
        get {
            access(keyPath: \.isEnabled)
            return userDefaults.bool(forKey: Self.hapticFeedbackKey)
        }
        /// Setter for the isEnabled property.
        /// It sets the value in the user defaults for the isEnabled key path.
        set {
            withMutation(keyPath: \.isEnabled) {
                userDefaults.set(newValue, forKey: Self.hapticFeedbackKey)
            }
        }
    }

    public init(storage: UserDefaults = .standard) {
        self.userDefaults = storage
    }
}
