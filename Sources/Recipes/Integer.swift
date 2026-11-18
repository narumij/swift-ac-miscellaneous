/// 床関数
///
/// evimaさんの解説を参考にした記憶です
@inlinable
@inline(__always)
public func floor(_ n: Int, _ d: Int) -> Int {
  (n - (n % d + d) % d) / d
}

/// 天井関数
///
/// evimaさんの解説を参考にした記憶です
@inlinable
@inline(__always)
public func ceil(_ n: Int, _ d: Int) -> Int {
  (n + (d - n % d) % d) / d
}

/// ユークリッド剰余関数
///
/// evimaさんの解説を参考にした記憶です
@inlinable
@inline(__always)
public func mod(_ n: Int, _ d: Int) -> Int {
  let a = n % d
  return a < 0 ? a + d : a
}

/// 拡張ユークリッドの互除法の実装例
///
/// ax+by=±gcd(a,b) となる整数の組 (x,y) を O(logmin(∣a∣,∣b∣)) で計算するアルゴリズム
///
/// ここで整数の組 x,y は max(∣x∣,∣y∣)≤max(∣a∣,∣b∣) を満たす整数であることが保証されています。
///
/// I - S = 1 解説を参考にしました。
func extgcd(_ a: Int, _ b: Int) -> (Int, Int) {
  if b == 0 { return (1, 0) }
  var x: Int
  var y: Int
  (y, x) = extgcd(b, a % b)
  y -= a / b * x
  return (x, y)
}

extension FixedWidthInteger {
  init(_ flag: Bool) {
    self = flag ? 1 : 0
  }
}

/// 0〜33の階乗を返します。
@available(macOS 26.0, iOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
@inlinable
public func factorial(_ n: Int) -> Int128 {
  factorialTable[n]
}

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
  3_628_800,
  39_916_800,
  479_001_600,
  6_227_020_800,
  87_178_291_200,
  1_307_674_368_000,
  20_922_789_888_000,
  355_687_428_096_000,
  6_402_373_705_728_000,
  121_645_100_408_832_000,
  2_432_902_008_176_640_000,
  51_090_942_171_709_440_000,
  1_124_000_727_777_607_680_000,
  25_852_016_738_884_976_640_000,
  620_448_401_733_239_439_360_000,
  15_511_210_043_330_985_984_000_000,
  403_291_461_126_605_635_584_000_000,
  10_888_869_450_418_352_160_768_000_000,
  304_888_344_611_713_860_501_504_000_000,
  8_841_761_993_739_701_954_543_616_000_000,
  265_252_859_812_191_058_636_308_480_000_000,
  8_222_838_654_177_922_817_725_562_880_000_000,
  263_130_836_933_693_530_167_218_012_160_000_000,
  8_683_317_618_811_886_495_518_194_401_280_000_000,
]

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
