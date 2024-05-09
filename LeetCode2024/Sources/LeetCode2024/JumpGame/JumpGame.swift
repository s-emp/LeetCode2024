// https://leetcode.com/problems/jump-game/?envType=study-plan-v2&envId=top-interview-150

final class JumpGame {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        var nextSteps = Set<Int>([0])
        let goal = nums.count - 1
        for (index, num) in nums.enumerated() where nextSteps.contains(index) {
            for i in 0+index...num+index {
                nextSteps.insert(i)
            }
            if nextSteps.contains(goal) { return true }
        }
        return nextSteps.contains(goal)
    }
}
