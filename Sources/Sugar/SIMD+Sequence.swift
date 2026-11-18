// SIMDでシーケンスプロトコルの諸々を使う

extension SIMD {

  @inlinable
  @inline(__always)
  public func makeIterator() -> AnyIterator<Scalar> {
    var index = 0
    return AnyIterator {
      guard index < Self.scalarCount else { return nil }
      defer { index += 1 }
      return self[index]
    }
  }
}

extension SIMD2: @retroactive Sequence {}
extension SIMD3: @retroactive Sequence {}
extension SIMD4: @retroactive Sequence {}
