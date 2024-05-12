// https://leetcode.com/problems/trapping-rain-water/?envType=study-plan-v2&envId=top-interview-150

final class TrappingRainWater {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 2 else { return 0 }
        var startIndex = 0
        for i in 1..<height.count - 1 {
            if height[startIndex] > height[i] { break }
            startIndex = i
        }
        var endIndex = height.count - 1
        for i in (0..<endIndex).reversed() {
            if height[endIndex] > height[i] { break }
            endIndex = i
        }
        guard startIndex < endIndex else { return 0 }
        var startMax = height[startIndex]
        var endMax = height[endIndex]
        var isLeft2Right = startMax <= endMax
        var result = 0
        while startIndex != endIndex {
            if isLeft2Right {
                startIndex += 1
                let value = height[startIndex]
                if startMax > value {
                    result += startMax - value
                } else {
                    startMax = value
                    isLeft2Right = startMax <= endMax
                }
            } else {
                endIndex -= 1
                let value = height[endIndex]
                if endMax > value {
                    result += endMax - value
                } else {
                    endMax = value
                    isLeft2Right = startMax <= endMax
                }
            }
        }
        return result
    }
}
