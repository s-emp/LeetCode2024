// https://leetcode.com/problems/rotate-array/?envType=study-plan-v2&envId=top-interview-150

final class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let rotateCount = k % nums.count
        guard rotateCount > 0 else { return }
        let suffix = nums.suffix(rotateCount)
        var i = nums.count - 1
        while i - rotateCount >= 0 {
            nums.swapAt(i, i - rotateCount)
            i -= 1
        }
        i = 0
        for value in suffix {
            nums[i] = value
            i += 1
        }
    }
}
