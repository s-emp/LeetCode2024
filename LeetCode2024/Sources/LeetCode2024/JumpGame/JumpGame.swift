// https://leetcode.com/problems/jump-game/?envType=study-plan-v2&envId=top-interview-150

final class JumpGame {
    func canJump(_ nums: [Int]) -> Bool {
        let goal = nums.count - 1
        guard goal > 0 else { return true }
        var end = 0
        for (index, num) in nums.enumerated() {
            end = max(end, index+num)
            if end <= index { return false }
            if end >= goal { return true }
        }
        return false
    }
}
