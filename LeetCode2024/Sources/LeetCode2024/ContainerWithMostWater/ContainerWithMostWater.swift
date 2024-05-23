//

final class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var startIndex = height.startIndex
        var endIndex = height.endIndex - 1
        var currentMax = 0
        while startIndex < endIndex {
            let startValue = height[startIndex]
            let endValue = height[endIndex]
            let newMax = min(startValue, endValue) * (endIndex - startIndex)
            currentMax = max(newMax, currentMax)
            if startValue < endValue {
                startIndex += 1
            } else if startValue > endValue {
                endIndex -= 1
            } else {
                startIndex += 1
                endIndex -= 1
            }
        }
        return currentMax
    }
}
