import Testing

@testable import Leetcode

@Suite struct TwoSumTests {

    @Test func twoSumExampleOne() {
        let input = [2, 7, 11, 15]
        let target = 9
        let result = twoSum(input, target)
        #expect(result == [0, 1])
    }

}