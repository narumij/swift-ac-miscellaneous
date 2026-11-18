// GLSL風記法が好きなため
extension SIMDMask {
  
  /// SIMDで比較演算した結果が全部真
  @inlinable
  @inline(__always)
  public var all: Bool {
    Swift.all(self)
  }

  /// SIMDで比較演算した結果がどれか真
  @inlinable
  @inline(__always)
  public var any: Bool {
    Swift.any(self)
  }
}
