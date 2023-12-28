//
//  HapticFeedbackProviding.swift
//
//  Created by James Sedlacek on 12/28/23.
//

import Foundation

public protocol HapticFeedbackProviding: AnyObject, Observable {
    var isEnabled: Bool { get set }
}
