import SwiftUI

@available(macOS 12.0, *)
extension EnvironmentValues {
  var listLevel: Int {
    get { self[ListLevelKey.self] }
    set { self[ListLevelKey.self] = newValue }
  }

  var tightSpacingEnabled: Bool {
    get { self[TightSpacingEnabledKey.self] }
    set { self[TightSpacingEnabledKey.self] = newValue }
  }
}

@available(macOS 12.0, *)
private struct ListLevelKey: EnvironmentKey {
  static var defaultValue = 0
}

private struct TightSpacingEnabledKey: EnvironmentKey {
  static var defaultValue = false
}
