import Convenience
import XCTest

final class CovenienceTests: XCTestCase {

  @available(macOS 26.0, iOS 26.0, tvOS 26.0, watchOS 26.0, visionOS 26.0, *)
  func testFactorialTable() {
    XCTAssertEqual(factorial(0), 1)
    var expected: Int128 = 1
    for n in 1...33 {
      expected *= Int128(n)
      XCTAssertEqual(factorial(n), expected)
    }
    XCTAssertEqual(factorial(33), 8683317618811886495518194401280000000)
  }

  func testPrefixSum() throws {
    XCTAssertEqual(prefixSum((1...5) + []), [0, 1, 3, 6, 10, 15])
  }

  func testPrefixSum2D() throws {
    let source = [
      [1, 2, 3],
      [4, 5, 6],
    ]

    XCTAssertEqual(
      prefixSum(source),
      [
        [0, 0, 0, 0],
        [0, 1, 3, 6],
        [0, 5, 12, 21],
      ])
  }

  func testPrefixSum3D() throws {
    let source = [
      [
        [1, 2],
        [3, 4],
      ],
      [
        [5, 6],
        [7, 8],
      ],
    ]

    XCTAssertEqual(prefixSum(source)[2][2][2], 36)
    XCTAssertEqual(prefixSum(source)[1][2][2], 10)
    XCTAssertEqual(prefixSum(source)[2][1][2], 14)
    XCTAssertEqual(prefixSum(source)[2][2][1], 16)
  }


}
