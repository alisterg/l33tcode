/// Given an array of integers nums and an integer target, return indices of the
/// two numbers such that they add up to target. You may assume that each input
/// would have exactly one solution, and you may not use the same element twice.
/// You can return the answer in any order.
/// - Parameters:
///   - nums: array if ints
///   - target: array of int
/// - Returns: pair of indices that add up to the target
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // naive: for each element, loop over each other element and check
    for i in nums.indices {
        for j in nums.indices {
            if j == i {
                continue
            }

            if nums[j] + nums[i] == target {
                return [i, j]
            }
        }
    }

    return [0]
}