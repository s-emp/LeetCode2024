// https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150

final class RemoveDuplicatesSortedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var i = 0
        var currentNum: Int? = nil
        for num in nums where currentNum != num {
            nums[i] = num
            currentNum = num
            i += 1
        }
        return i
    }
}
