    import XCTest
    @testable import HKWorkoutActivityTypeExtensions

    import HealthKit

    final class HKWorkoutActivityTypeExtensionsTests: XCTestCase {
        func testPrintOverview() {
            Range(0...80).compactMap { idx in
                // map `.other` (rawValue: 3000) to index 0
                HKWorkoutActivityType(rawValue: UInt(idx == 0 ? 3000 : idx)) ?? .other
            }.forEach {
                print(String(format: "%@ %@ (rawValue: %d)", $0.associatedEmoji, $0.commonName, $0.rawValue))
                XCTAssertFalse($0.commonName.isEmpty)
            }
        }
    }
