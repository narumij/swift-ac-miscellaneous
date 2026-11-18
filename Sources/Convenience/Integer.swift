#if false
/// びっくり！です
@inlinable
public func factorial<Number>(_ n: Number) -> Number
where Number: Numeric & Hashable & ExpressibleByIntegerLiteral & Comparable {

  var memo: [Number: Number] = .init()

  func factorial(_ n: Number) -> Number {
    let args = n
    if let result = memo[args] {
      return result
    }
    let r = body(n)
    memo[args] = r
    return r
  }

  func body(_ n: Number) -> Number {
    n <= 1 ? 1 : n * factorial(n - 1)
  }

  return factorial(n)
}
#endif

@available(macOS 26.0, iOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
@usableFromInline
let factorialTable: InlineArray<34, Int128> = [
  1,
  1,
  2,
  6,
  24,
  120,
  720,
  5040,
  40320,
  362880,
  3628800,
  39916800,
  479001600,
  6227020800,
  87178291200,
  1307674368000,
  20922789888000,
  355687428096000,
  6402373705728000,
  121645100408832000,
  2432902008176640000,
  51090942171709440000,
  1124000727777607680000,
  25852016738884976640000,
  620448401733239439360000,
  15511210043330985984000000,
  403291461126605635584000000,
  10888869450418352160768000000,
  304888344611713860501504000000,
  8841761993739701954543616000000,
  265252859812191058636308480000000,
  8222838654177922817725562880000000,
  263130836933693530167218012160000000,
  8683317618811886495518194401280000000,
]

/// 0〜33の階乗を返します。
@available(macOS 26.0, iOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
@inlinable
public func factorial(_ n: Int) -> Int128 {
  factorialTable[n]
}
