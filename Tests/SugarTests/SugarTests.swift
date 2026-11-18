import Sugar
import XCTest

final class SugarTests: XCTestCase {

  func testResizeCanShrinkAndExtend() throws {
    var values = [1, 2, 3]
    values.resize(2)
    XCTAssertEqual(values, [1, 2])

    values.resize(5)
    XCTAssertEqual(values, [1, 2, 0, 0, 0])

    XCTAssertEqual([1, 2].resized(4), [1, 2, 0, 0])
  }

  func testTransposedJaggedSequenceStopsAtShortestRow() throws {
    let source = [
      [1, 2, 3],
      [4, 5],
      [6, 7, 8, 9],
    ]

    XCTAssertEqual(source.transposed(), [[1, 4, 6], [2, 5, 7]])
  }
}
