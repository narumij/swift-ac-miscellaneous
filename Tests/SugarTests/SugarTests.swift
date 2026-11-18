import Sugar
import XCTest

final class SugarTests: XCTestCase {

  func testTransposedJaggedSequenceStopsAtShortestRow() throws {
    let source = [
      [1, 2, 3],
      [4, 5],
      [6, 7, 8, 9],
    ]

    XCTAssertEqual(source.transposed(), [[1, 4, 6], [2, 5, 7]])
  }
}
