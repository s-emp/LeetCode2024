// https://leetcode.com/problems/jump-game-ii/description/?envType=study-plan-v2&envId=top-interview-150

final class JumpGame2 {
    func jump(_ nums: [Int]) -> Int {
        var lastStep = 0
        var currentStep = 0
        var count = 0
        while currentStep < nums.count - 1 {
            var step = currentStep
            for i in lastStep...currentStep {
                step = max(step, currentStep - (currentStep - i) + nums[i])
            }
            lastStep = currentStep + 1
            currentStep = max(step, currentStep)
            count += 1
        }
        return count
    }
}
