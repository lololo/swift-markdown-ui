import Foundation

/// A text style that sets the text font family.
///
@available(macOS 12.0, *)
public struct FontFamily: TextStyle {
  private let family: FontProperties.Family

  /// Creates a font family text style.
  /// - Parameter family: The font family.
  public init(_ family: FontProperties.Family) {
    self.family = family
  }

  public func _collectAttributes(in attributes: inout AttributeContainer) {
    attributes.fontProperties?.family = self.family
  }
}
