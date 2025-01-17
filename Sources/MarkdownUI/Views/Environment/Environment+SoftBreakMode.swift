import SwiftUI

@available(macOS 12.0, *)
extension View {
  /// Sets the soft break mode for inline texts in a view hierarchy.
  ///
  /// - parameter softBreakMode: If set to `space`, treats all soft breaks as spaces, keeping sentences whole. If set to `lineBreak`, treats soft breaks as full line breaks
  ///
  /// - Returns: A view that uses the specified soft break mode for itself and its child views.
  public func markdownSoftBreakMode(_ softBreakMode: SoftBreak.Mode) -> some View {
    self.environment(\.softBreakMode, softBreakMode)
  }
}

@available(macOS 12.0, *)
extension EnvironmentValues {
  var softBreakMode: SoftBreak.Mode {
    get { self[SoftBreakModeKey.self] }
    set { self[SoftBreakModeKey.self] = newValue }
  }
}

@available(macOS 12.0, *)
private struct SoftBreakModeKey: EnvironmentKey {
  static let defaultValue: SoftBreak.Mode = .space
}
