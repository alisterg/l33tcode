import Testing

@testable import Leetcode

@Suite struct MergeStringsAlternatelyTests {

    @Test func mergeStringsExampleOne() {
        let word1 = "abc"
        let word2 = "pqr"
        let result = mergeStringsAlternately(word1, word2)
        #expect(result == "apbqcr")
    }

    @Test func mergeStringsExampleTwo() {
        let word1 = "ab"
        let word2 = "pqrs"
        let result = mergeStringsAlternately(word1, word2)
        #expect(result == "apbqrs")
    }

    @Test func mergeStringsExampleThree() {
        let word1 = "abcd"
        let word2 = "pq"
        let result = mergeStringsAlternately(word1, word2)
        #expect(result == "apbqcd") // apbqbcd
    }
}