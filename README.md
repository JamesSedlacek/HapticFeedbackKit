# HapticFeedbackKit

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![GitHub stars](https://img.shields.io/github/stars/JamesSedlacek/HapticFeedbackKit.svg)](https://github.com/JamesSedlacek/HapticFeedbackKit/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/JamesSedlacek/HapticFeedbackKit.svg?color=blue)](https://github.com/JamesSedlacek/HapticFeedbackKit/network)
[![GitHub contributors](https://img.shields.io/github/contributors/JamesSedlacek/HapticFeedbackKit.svg?color=blue)](https://github.com/JamesSedlacek/HapticFeedbackKit/network)
<a href="https://github.com/JamesSedlacek/HapticFeedbackKit/pulls"><img src="https://img.shields.io/github/issues-pr/JamesSedlacek/HapticFeedbackKit" alt="Pull Requests Badge"/></a>
<a href="https://github.com/JamesSedlacek/HapticFeedbackKit/issues"><img src="https://img.shields.io/github/issues/JamesSedlacek/HapticFeedbackKit" alt="Issues Badge"/></a>


<p align="left">
  <img src = "https://github.com/JamesSedlacek/HapticFeedbackKit/blob/main/Assets/Settings.png" height="250">
</p>

## Description
`HapticFeedbackKit` is a SwiftUI library designed to manage haptic feedback. <br>
The primary purpose of this package is to provide users with the ability to enable or disable haptic feedback within the application.

<br>

## Requirements

- **iOS**: 17.0 or later.
- **macOS**: 14.0 or later.

<br>

## Installation

You can install `HapticFeedbackKit` using the Swift Package Manager.

1. In Xcode, select "File" > "Add Package Dependencies".
2. Copy & paste the following into the "Search or Enter Package URL" search bar.
```
https://github.com/JamesSedlacek/HapticFeedbackKit.git
```
4. Xcode will fetch the repository & the "HapticFeedbackKit" library will be added to your project.

<br>

## Usage

1. Use `.hapticFeedback()` instead of `.sensoryFeedback()`.
```swift
import HapticFeedbackKit
import SwiftUI

struct ContentView: View {
    @State private var taskIsComplete = false

    var body: some View {
        Button("Mark Complete") {
            taskIsComplete = true
        }
        .hapticFeedback(.success, trigger: taskIsComplete)
    }
}
```

<br>

2. Use a `HapticFeedbackToggle()` in the settings screen in your project.
```swift
import HapticFeedbackKit
import SwiftUI

struct SettingsView {
    var body: some View {
        VStack {
            HapticFeedbackToggle()
        }
    }
}
```

<br>

## Author

James Sedlacek, find me on [X/Twitter](https://twitter.com/jsedlacekjr) or [LinkedIn](https://www.linkedin.com/in/jamessedlacekjr/)

<br>

## License

<details>
  <summary><strong>HapticFeedbackKit is available under the MIT license.</strong></summary>
  <br>

Copyright (c) 2023 James Sedlacek

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

</details>



